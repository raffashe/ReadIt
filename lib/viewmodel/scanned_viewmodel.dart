import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScannedTextViewModel {
  void copyTextToClipboard(
      {required BuildContext context, required String text}) {
    Clipboard.setData(ClipboardData(text: text)).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Texto copiado!")),
      );
    });
  }
}
