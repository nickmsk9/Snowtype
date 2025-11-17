import Cocoa
import QuartzCore

class SnowView: NSView {

    private let emitter = CAEmitterLayer()
    private let cell = CAEmitterCell()
    private var isConfigured = false

    override func viewDidMoveToWindow() {
        super.viewDidMoveToWindow()
        wantsLayer = true
        configureEmitter()
    }

    // ❄ Рисуем настоящую снежинку (6 лучей)
    private func makeSnowflakeImage(size: CGFloat) -> CGImage? {
        let img = NSImage(size: NSSize(width: size, height: size))
        img.lockFocus()

        let center = CGPoint(x: size / 2, y: size / 2)
        let radius = size / 2 - 1

        let path = NSBezierPath()
        path.lineWidth = size * 0.12
        NSColor.white.setStroke()

        for i in 0..<6 {
            let angle = CGFloat(i) * .pi / 3
            let dx = cos(angle) * radius
            let dy = sin(angle) * radius

            path.move(to: center)
            path.line(to: CGPoint(x: center.x + dx, y: center.y + dy))
        }

        path.stroke()
        img.unlockFocus()

        return img.cgImage(forProposedRect: nil, context: nil, hints: nil)
    }

    private func configureEmitter() {
        guard let layer = self.layer, !isConfigured else { return }
        isConfigured = true

        emitter.emitterShape = .line
        emitter.emitterMode = .surface
        emitter.emitterPosition = CGPoint(x: bounds.midX, y: bounds.maxY)
        emitter.emitterSize = CGSize(width: bounds.width, height: 1)

        // ❄ Самая красивая снежинка (белая и четкая)
        cell.contents = makeSnowflakeImage(size: 24)  // ← РАЗМЕР СНЕЖИНКИ

        cell.birthRate = 40
        cell.lifetime = 14
        cell.velocity = 35
        cell.velocityRange = 20
        cell.yAcceleration = -10
        cell.spinRange = 1.0

        // Размер
        cell.scale = 0.20
        cell.scaleRange = 0.12

        emitter.emitterCells = [cell]
        emitter.frame = bounds

        layer.addSublayer(emitter)
    }

    override func layout() {
        super.layout()
        emitter.frame = bounds
        emitter.emitterPosition = CGPoint(x: bounds.midX, y: bounds.maxY)
        emitter.emitterSize = CGSize(width: bounds.width, height: 1)
    }
}
