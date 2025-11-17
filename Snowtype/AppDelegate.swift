import Cocoa
import ServiceManagement

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!
    var statusItem: NSStatusItem!
    var snowView: SnowView!

    func applicationWillFinishLaunching(_ notification: Notification) {
        NSApp.setActivationPolicy(.accessory) // скрываем Dock
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        createDesktopSnowWindow()
        createStatusItem()
    }

    // MARK: — Окно поверх рабочего стола
    private func getDesktopWindowLevel() -> NSWindow.Level {
        let level = CGWindowLevelForKey(.desktopWindow)
        return NSWindow.Level(rawValue: Int(level) + 1)
    }

    private func createDesktopSnowWindow() {
        guard let screen = NSScreen.main else { return }
        let frame = screen.frame

        window = NSWindow(
            contentRect: frame,
            styleMask: [.borderless],
            backing: .buffered,
            defer: false
        )

        window.isOpaque = false
        window.backgroundColor = .clear
        window.level = getDesktopWindowLevel()
        window.ignoresMouseEvents = true
        window.collectionBehavior = [.canJoinAllSpaces, .stationary]

        snowView = SnowView(frame: frame)
        window.contentView = snowView

        window.orderFrontRegardless()
    }

    // MARK: — Меню в трее
    private func createStatusItem() {
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

        if let button = statusItem.button {
            button.image = NSImage(systemSymbolName: "snowflake", accessibilityDescription: nil)
        }

        let menu = NSMenu()

        // Показать/скрыть снег
        menu.addItem(NSMenuItem(
            title: NSLocalizedString("MENU_TOGGLE_SNOW", comment: ""),
            action: #selector(toggleSnow(_:)),
            keyEquivalent: ""
        ))

        menu.addItem(.separator())

        // Автозапуск
        menu.addItem(NSMenuItem(
            title: NSLocalizedString("MENU_AUTOSTART", comment: ""),
            action: #selector(toggleAutostart(_:)),
            keyEquivalent: ""
        ))

        // Кредиты
        menu.addItem(NSMenuItem(
            title: NSLocalizedString("MENU_CREDITS", comment: ""),
            action: #selector(showCredits(_:)),
            keyEquivalent: ""
        ))

        menu.addItem(.separator())

        // Выход
        menu.addItem(NSMenuItem(
            title: NSLocalizedString("MENU_QUIT", comment: ""),
            action: #selector(quitApp(_:)),
            keyEquivalent: "q"
        ))

        statusItem.menu = menu
    }

    // MARK: — Menu Actions
    @objc private func toggleSnow(_ sender: Any?) {
        if window.isVisible {
            window.orderOut(nil)
        } else {
            window.orderFrontRegardless()
        }
    }

    @objc private func toggleAutostart(_ sender: Any?) {
        if SMAppService.mainApp.status == .enabled {
            try? SMAppService.mainApp.unregister()
        } else {
            try? SMAppService.mainApp.register()
        }
    }

    @objc private func showCredits(_ sender: Any?) {
        let alert = NSAlert()
        alert.messageText = NSLocalizedString("CREDITS_TEXT", comment: "")
        alert.runModal()
    }

    @objc private func quitApp(_ sender: Any?) {
        NSApp.terminate(nil)
    }
}
