import 'dart:io';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

class TextRecognitionService {
  Future<String> recognizeTextFromImage({required String imgPath}) async {
    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
    final image = InputImage.fromFile(File(imgPath));
    final recognizedText = await textRecognizer.processImage(image);
    return recognizedText.text;
  }
}
