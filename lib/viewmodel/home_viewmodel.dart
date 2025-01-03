import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:readit/repository/image_repository.dart';

class HomeViewModel {
  final ImageRepository _imageRepository = ImageRepository();

  Future<void> processImageExtractText({
    required ImageSource imageSource,
    required Function(String) onTextExtracted,
  }) async {
    final File? imageFile =
        await _imageRepository.pickImage(source: imageSource);
    if (imageFile == null) return;

    final croppedFile = await _imageRepository.cropImage(imageFile: imageFile);
    if (croppedFile == null) return;

    final recognizedText = await _imageRepository.recognizeTextFromImage(
      imgPath: croppedFile.path,
    );
    onTextExtracted(recognizedText);
  }
}
