import 'package:flutter/material.dart';

class KubusController {
  TextEditingController sisiController = TextEditingController();
  void hitungVolumeKubus(context, double sisi) {
    if (sisiController.text.isEmpty) {
      showSnackbar(context, 'Field sisi tidak boleh kosong', Colors.red);
      return;
    }
    showSnackbar(
      context,
      'Volume Kubus adalah ${sisi * sisi * sisi}',
      Colors.green,
    );
  }

  void hitungKelilingKubus(context, double sisi) {
    if (sisiController.text.isEmpty) {
      showSnackbar(context, 'Field sisi tidak boleh kosong', Colors.red);
      return;
    }
    showSnackbar(context, 'Keliling Kubus adalah ${12 * sisi}', Colors.green);
  }

  void showSnackbar(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message), backgroundColor: color));
  }
}
