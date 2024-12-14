import 'package:flutter/material.dart';
import 'package:readit/widget/button_widget.dart';

import '../constants/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                style: AppStyles.subTextSecondary,
              ),
            ),
            CustomButton(text: "Acessar Galeria", onTap: () {}),
            const SizedBox(height: 20),
            CustomButton(text: "Acessar Câmera", onTap: () {})
          ],
        ),
      ),
    );
  }
}
