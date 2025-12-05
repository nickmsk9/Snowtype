Вот обновлённый README с разметкой — английская версия сверху, потом русская. Ты можешь просто целиком заменить им текущий `README.md` в репозитории.

---

````markdown
# ❄️ Snowtype

**Bring the magic of a winter snowfall to your macOS desktop.**  
Snowtype is a lightweight, elegant, and completely free macOS application that renders a serene animation of gently falling snowflakes directly over your desktop wallpaper and windows.

> This project is provided as source code for building with Xcode.  
> A compiled `Snowtype.app` (with icon) can be produced locally from this repository.

---

## ✨ Features

- **Realistic snowfall:** Enjoy a smooth, visually pleasing snow animation with natural movement.
- **Ultra-lightweight:** Designed with performance in mind so your Mac stays fast and responsive.
- **Desktop-integrated:** Snowflakes appear *behind* your app windows but *over* your wallpaper, creating a clean layered effect.
- **Simple & intuitive:** Launch the app and it just works. A menu bar icon lets you quickly show or hide the snowfall.
- **Native & free:** Written 100% in Swift using native macOS frameworks. No ads, no subscriptions, no in-app purchases.

---

## 🚀 Why Snowtype?

I created Snowtype because I wanted a simple, beautiful winter aesthetic for my Mac during the New Year season and couldn’t find a **free, native, and non-intrusive** alternative.  
Many existing apps were outdated, resource-heavy, or locked behind paywalls.

Snowtype is my answer: a modern, efficient, and delightful utility that you can freely build, use, and study.

> The project is shared for **personal, educational, and introductory use**, and remains completely free to run and explore.

---

## 📦 Installation & Usage

At the moment Snowtype is distributed as source code. To run it, you need to build the app in Xcode.

1. **Clone the repository:**
   ```bash
   git clone https://github.com/nickmsk9/Snowtype.git
   cd Snowtype
````

2. **Open the project in Xcode:**

   * Double-click `Snowtype.xcodeproj` or open it from Xcode via **File → Open…**

3. **Select a run destination:**

   * Choose **My Mac** as the build target.

4. **Build and run:**

   * Press **⌘R** or click the **Run** button in Xcode.
   * Xcode will build the project and launch `Snowtype.app` with the bundled icon.

5. **(Optional) Install to Applications:**

   * After a successful build, locate `Snowtype.app` in Xcode’s **Products** (or in the derived data/build folder).
   * Copy it to your `/Applications` folder for easier access.

6. **Control the snowfall:**

   * Use the **❄️** icon in the menu bar to enable/disable or quit the app.

> Project settings are configured for **Xcode 14+** and a **macOS 13+** deployment target.

---

## 🛠️ Building from Source

* Requires **Xcode 14+**
* Target platform: **macOS 13+**
* Language: **Swift**
* All necessary assets (including the app icon) are already included in the project.

You are free to:

* Explore the code,
* Modify the animation,
* Experiment with parameters as a learning project for macOS/Swift development.

---

## 🤝 Contributing

Found a bug? Have an idea for a new feature or improvement?

* Open an **Issue** on GitHub
* Or submit a **Pull Request** with your changes

Contributions, suggestions, and feedback are very welcome.

---

## 📄 License

This project is released under the **MIT License**.
See the `LICENSE` file for full details.

You may use, study, and modify the code under the terms of the MIT license.
The app itself is distributed **free of charge**, primarily for **personal, educational, and non-commercial/introductory use**, especially around the winter holidays.

---

## Русская версия

# ❄️ Snowtype

**Добавьте магию зимнего снегопада на рабочий стол вашего Mac.**
Snowtype — это лёгкое, элегантное и полностью бесплатное приложение для macOS, которое создаёт спокойную анимацию плавно падающих снежинок поверх ваших обоев и окон.

> Проект распространяется в виде исходного кода для сборки в Xcode.
> Готовое приложение `Snowtype.app` (с иконкой) можно собрать локально из этого репозитория.

---

## ✨ Особенности

* **Реалистичный снегопад:** Плавная и приятная глазу анимация снежинок с естественным движением.
* **Сверхлёгкое приложение:** Разработано с упором на производительность — ваш Mac не тормозит.
* **Интеграция с рабочим столом:** Снежинки отображаются *под* окнами приложений, но *поверх* обоев, создавая аккуратный слоистый эффект.
* **Простой и интуитивный интерфейс:** Запустили — и снег пошёл. Управление через иконку в строке меню.
* **Нативное и бесплатное:** Приложение целиком написано на Swift с использованием нативных фреймворков macOS. Без рекламы, подписок и скрытых платежей.

---

## 🚀 Зачем нужен Snowtype?

Я создал Snowtype, потому что хотел добавить на свой Mac простую и красивую зимнюю атмосферу к Новому году, но не нашёл **бесплатной, нативной и ненавязчивой** альтернативы.
Многие существующие решения оказались устаревшими, прожорливыми или платными.

Snowtype — это мой ответ: современная, аккуратная и эффективная утилита, которую можно свободно собрать, использовать и изучать.

> Проект распространяется **бесплатно**, в первую очередь для **личного, ознакомительного и образовательного использования**.

---

## 📦 Установка и запуск

Сейчас Snowtype распространяется как исходный код. Чтобы запустить приложение, его нужно собрать в Xcode.

1. **Клонируйте репозиторий:**

   ```bash
   git clone https://github.com/nickmsk9/Snowtype.git
   cd Snowtype
   ```

2. **Откройте проект в Xcode:**

   * Дважды щёлкните по `Snowtype.xcodeproj`
     или выберите его через **File → Open…** в Xcode.

3. **Выберите цель запуска:**

   * В списке схем выберите **My Mac**.

4. **Соберите и запустите:**

   * Нажмите **⌘R** или кнопку **Run** в Xcode.
   * Xcode соберёт проект и запустит `Snowtype.app` с уже настроенной иконкой.

5. **(Необязательно) Установите в «Программы»:**

   * После успешной сборки найдите `Snowtype.app` в разделе **Products** (или в папке сборки Xcode).
   * Скопируйте его в `/Applications`, чтобы запускать как обычное приложение.

6. **Управление снегопадом:**

   * Используйте иконку **❄️** в строке меню, чтобы включать/выключать снег или закрыть приложение.

> Проект настроен для **Xcode 14+** и цели сборки **macOS 13+**.

---

## 🛠️ Сборка из исходников

* Требуется **Xcode 14+**
* Целевая платформа: **macOS 13+**
* Язык: **Swift**
* Все необходимые ресурсы (включая иконку приложения) уже входят в проект.

Проект отлично подходит для:

* изучения разработки под macOS,
* экспериментов с анимацией,
* доработки визуальных эффектов под свои задачи.

---

## 🤝 Участие в разработке

Нашли баг? Есть идея новой функции или улучшения?

* Открывайте **Issue** на GitHub
* Или отправляйте **Pull Request** с изменениями

Любая обратная связь и вклад в проект приветствуются.

---

## 📄 Лицензия

Проект распространяется под лицензией **MIT**.
Подробности см. в файле `LICENSE`.

Вы можете использовать, изучать и изменять код в соответствии с условиями MIT-лицензии.
Приложение распространяется **бесплатно**, в том числе для **личных, ознакомительных и образовательных целей**, особенно в период новогодних праздников.

