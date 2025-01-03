import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../../constants/styles.dart';
import 'package:readit/widget/button_widget.dart';
import '../../viewmodel/home_viewmodel.dart';
import '../scan/scanned_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeViewModel _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bg,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 10, left: 12, right: 12, top: 40),
              child: Text("Read It", style: AppStyles.titleStyle),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Selecione uma imagem para que possamos extrair e reconhecer o texto contido nela de forma rápida e precisa",
                style: AppStyles.subTextSecondary,
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: "Acessar Galeria",
              onTap: () {
                _viewModel.processImageExtractText(
                  imageSource: ImageSource.gallery,
                  onTextExtracted: (recognizedText) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ScannedText(extractedText: recognizedText),
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: "Acessar Câmera",
              onTap: () {
                _viewModel.processImageExtractText(
                  imageSource: ImageSource.camera,
                  onTextExtracted: (recognizedText) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ScannedText(extractedText: recognizedText),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
