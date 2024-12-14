class OCRModel {
  String extractedText;

  OCRModel({this.extractedText = ''});

  void updateText(String text) {
    extractedText = text;
  }
}
