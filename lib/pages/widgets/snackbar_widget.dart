

import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  final String message;
  final Color color;

  const SnackbarWidget({super.key, required this.message, required this.color});

  void show(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // Widget ini hanya sebagai utilitas untuk menampilkan snackbar
  }
}