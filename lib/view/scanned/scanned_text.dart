import 'package:flutter/material.dart';
import '../../constants/styles.dart';
import 'package:readit/widget/button_widget.dart';

class ScannedText extends StatelessWidget {
  final String extractedText;

  const ScannedText({super.key, required this.extractedText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bg,
      appBar: AppBar(
        backgroundColor: Colors.black, // Fundo preto
        iconTheme: const IconThemeData(color: Colors.white), // Ícones brancos
        titleTextStyle:
            const TextStyle(color: Colors.white, fontSize: 20), // Texto branco
        title: const Center(child: Text("Read It")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text("Scanned Text", style: AppStyles.titleStyle),
            ),
            const SizedBox(height: 20),
            extractedText.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: const Color(
                            0x60414040), // Cor de fundo com opacidade
                        borderRadius:
                            BorderRadius.circular(16.0), // Bordas arredondadas
                      ),
                      child: SingleChildScrollView(
                        child: Text(
                          "Texto extraído aqui",
                          style: AppStyles.subTextSecondary,
                        ),
                      ),
                    ),
                  ),
            const SizedBox(height: 20),
            CustomButton(
              text: "Copiar Texto",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
