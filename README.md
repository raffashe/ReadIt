# ReadIt - OCR Flutter App

![layout](https://github.com/user-attachments/assets/c7ad61b5-f866-49d8-a3b3-e9409812dcfc)


ReadIt is a Flutter-based application that uses Optical Character Recognition (OCR) to extract text from images. This app utilizes the `google_mlkit_text_recognition` package to process images and recognize text in real-time. The app is designed with a clean architecture and follows the MVVM design pattern to maintain a modular, scalable, and testable structure.

## Project Structure

The project follows the separation-of-concerns principle, which divides the app into two primary layers:

### 1. **UI Layer**: Handles the user interface and user interactions. It consists of:
- **Views**: Responsible for rendering UI elements. Views are composed of widgets and are passed data from the ViewModel.
- **ViewModels**: Contains the logic to transform data into a format suitable for the UI. They manage the UI state and handle user interactions.

### 2. **Data Layer**: Manages the data of the application. It consists of:
- **Repositories**: Source of truth for the app data, which interacts with services to fetch and process the data.
- **Services**: Wrap API endpoints and other external data sources, such as platform plugins or REST APIs, to provide the data needed by the repositories.

---

## Features

- **Image Selection**: Select images from the gallery using `image_picker`.
- **Image Cropping**: Crop images before processing with `image_cropper`.
- **OCR Text Extraction**: Use `google_mlkit_text_recognition` to extract text from images.
- **Text Display**: Display the extracted text in a clear format on the UI.

---

## Architecture

### MVVM Design Pattern

The app is built using the MVVM (Model-View-ViewModel) design pattern:

- **Model**: Data layer consisting of Repositories and Services that fetch and process the data.
- **View**: UI layer responsible for presenting data and user interaction.
- **ViewModel**: Acts as a mediator between the View and Model, transforming data into a suitable format for presentation.

### UI Layer

- **Views**: Represent screens and UI components (e.g., HomePage, CameraScreen, GalleryScreen, etc.). They display the extracted text and accept user input.
- **ViewModels**: Handle the core logic of text extraction and interaction with repositories. Each screen will have its own ViewModel, ensuring separation of concerns.

### Data Layer

- **Repositories**: Responsible for managing the app's data, such as fetching and processing images, and extracting text using the OCR model.
- **Services**: Provide access to external APIs or platform services, like Google’s ML Kit OCR.

---

## Setup

To get started with the app, clone the repository and install dependencies.

### Prerequisites

- Flutter SDK (version 3.5.4 or higher)
- Dart SDK

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/readit.git
    cd readit
    ```

2. Install dependencies:
    ```bash
    flutter pub get
    ```

3. Run the app:
    ```bash
    flutter run
    ```

---

## Dependencies

- **image_picker**: Allows users to select images from their gallery.
- **image_cropper**: Enables image cropping before processing.
- **google_mlkit_text_recognition**: Uses Google’s ML Kit to extract text from images using OCR.
- **google_fonts**: Provides a selection of fonts for the app UI.

---


## License

This project is licensed under the MIT License - see the [[LICENSE](https://chatgpt.com/c/LICENSE)](LICENSE) file for details.
