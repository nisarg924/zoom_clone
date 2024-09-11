# Zoom Clone - Flutter, Firebase & Jitsi Meet

A Zoom-like video conferencing app built using Flutter, Firebase, and the Jitsi Meet plugin. The app provides functionalities like user authentication, real-time video conferencing, and meeting management, all integrated with a clean and responsive UI.

## Table of Contents
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Setup Instructions](#setup-instructions)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Features
- **User Authentication**: Users can sign up and log in using Firebase Authentication (Google Sign-In).
- **Create/Join Meetings**: Users can create new video meetings or join existing ones using a unique meeting code.
- **Real-Time Video & Audio**: Seamless video conferencing powered by Jitsi Meet.
- **Meeting Management**: Host can mute/unmute participants, toggle video, and end the meeting.
- **Secure Meetings**: Meetings are password-protected, ensuring secure communication.
- **Cross-platform Support**: The app runs on both Android and iOS.

## Technologies Used
- **Flutter**: Cross-platform framework for building the app.
- **Firebase**: Backend as a Service (BaaS) for authentication and data storage.
    - Firebase Authentication
    - Firebase Firestore (for meeting records)
- **Jitsi Meet Plugin**: Provides real-time video conferencing capabilities.

## Setup Instructions

1. **Clone the repository**
    ```bash
    git clone https://github.com/nisarg924/zoom_clone.git
    cd zoom-clone
    ```

2. **Install dependencies**
   Make sure you have Flutter installed. Then run:
    ```bash
    flutter pub get
    ```

3. **Firebase setup**
    - Create a Firebase project on the [Firebase Console](https://console.firebase.google.com/).
    - Enable Firebase Authentication (Google Sign-In).
    - Download the `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS), and place them in the appropriate directories.
    - Add Firebase configuration in `pubspec.yaml` and other necessary files.

4. **Jitsi Meet Plugin Setup**
    - Install the Jitsi Meet plugin by adding it to `pubspec.yaml`:
      ```yaml
      jitsi_meet: ^4.0.0
      ```
    - Make sure to configure Jitsi Meet for Android and iOS by following the official documentation [here](https://pub.dev/packages/jitsi_meet#ios).

5. **Run the app**
    - For Android:
      ```bash
      flutter run
      ```
    - For iOS:
      Make sure you have Xcode installed and properly configured.

## Usage

1. **Authentication**:
    - Users can log in using their Google account via Firebase Authentication.

2. **Create a Meeting**:
    - Once logged in, users can create a new meeting, generating a unique meeting ID.

3. **Join a Meeting**:
    - To join a meeting, users enter the provided meeting code and are connected via Jitsi Meet.

4. **In-Meeting Controls**:
    - Mute/unmute audio, toggle video, and manage participants.

## Contributing
We welcome contributions! If you'd like to improve the app, follow these steps:

1. Fork the repository.
2. Create a new branch.
3. Make your changes.
4. Submit a pull request.

Please ensure all changes adhere to the project's coding standards.

## License
This project is licensed under the MIT License. See the `LICENSE` file for more details.




