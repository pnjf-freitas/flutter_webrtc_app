# flutter_webrtc_app

A new Flutter project for peer-to-peer video calling using WebRTC.

## Getting Started

This project is a starting point for a Flutter application that enables peer-to-peer video calling using WebRTC.

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) (version 3.5.4 or higher)
- [Dart](https://dart.dev/get-dart) (version 2.18.0 or higher)

### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/flutter_webrtc_app.git
    cd flutter_webrtc_app
    ```

2. Install dependencies:
    ```sh
    flutter pub get
    ```

3. Run the app:
    ```sh
    flutter run
    ```

### Configuration

Update the `websocketURL` in [main.dart](/lib/main.dart) with your WebSocket server URL:
```dart
final String websocketURL = "YOUR_WEBSOCKET_SERVER_URL";
```
