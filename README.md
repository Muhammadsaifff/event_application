---

# Event App with Hero Animation

This Flutter application displays a list of upcoming events with images and detailed descriptions. It features smooth navigation between the list and detail views using Flutter's `Hero` animation for visually appealing transitions.

---

## Features

- Displays a list of upcoming tech, music, and community events.
- Each event includes a title, date, location, image, and description.
- Tap on any event to navigate to a detailed view using a shared `Hero` animation.
- Uses `timeDilation` to slow down animations for better visualization.
- Clean layout using `ListView.builder`, `InkWell`, and Hero transitions.

---

## Getting Started

### Prerequisites

- Flutter SDK (3.x or later)
- Dart SDK
- Android Studio or VSCode with Flutter plugin

### Installation

1. **Clone the repository:**
```bash
git clone https://github.com/Muhammadsaifff/event_app.git
cd event_app
```

2. **Install dependencies:**
```bash
flutter pub get
```

3. **Run the app:**
```bash
flutter run
```

---

## Assets

This app uses local images for event thumbnails and Hero transitions. Make sure to place the following images in the `assets/images/` directory:

- `tech.png`
- `music.png`
- `startup.png`
- `books.png`

And declare them in `pubspec.yaml`:
```yaml
flutter:
  assets:
    - assets/images/tech.png
    - assets/images/music.png
    - assets/images/startup.png
    - assets/images/books.png
```

---

## Usage

1. Launch the app.
2. Browse through the list of events.
3. Tap on any event to view its detailed information.
4. Watch the Hero animation transition from the list item to the detail screen.

To slow down animation, change `timeDilation` in `main()`:
```dart
timeDilation = 7.0; // Slower animation
```

---

## Built With

- **Flutter** – UI toolkit for building natively compiled mobile apps
- **Dart** – Programming language used with Flutter
- **Hero Widget** – For smooth image transitions
- **Material Design** – For consistent UI experience

---

## Learning Goals

- Understand and implement **Standard Hero Animation** using matching `tags`.
- Practice Flutter concepts like routing, navigation, `ListView`, and gesture detection with `InkWell`.
- Apply `ClipRRect` for rounded image aesthetics.

---

## License

This project is licensed under the MIT License.

---

## Author

**Muhammad Saif Shakil**

GitHub: [@Muhammadsaifff](https://github.com/Muhammadsaifff)

Feel free to open issues or submit pull requests to enhance the project!

---
