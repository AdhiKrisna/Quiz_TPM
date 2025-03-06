import 'package:flutter/material.dart';

class TrapesiumController {
  TextEditingController sisi1Controller = TextEditingController();
  TextEditingController sisi2Controller = TextEditingController();
  TextEditingController sisi3Controller = TextEditingController();
  TextEditingController sisi4Controller = TextEditingController();
  TextEditingController tinggiController = TextEditingController();

  void hitungLuas(context, double sisi1, double sisi2, double tinggi) {
    if (sisi1Controller.text.isEmpty ||
        sisi2Controller.text.isEmpty ||
        tinggiController.text.isEmpty) {
      showSnackbar(context, 'Field sisi 1, 2 dan tinggi tidak boleh kosong', Colors.red);
      return;
    }
    showSnackbar(context, 'Luas Trapesium adalah ${0.5 * (sisi1 + sisi2) * tinggi}', Colors.green);
  }

  void hitungKeliling(context,
      double sisi1, double sisi2, double sisi3, double sisi4) {
    if (sisi1Controller.text.isEmpty ||
        sisi2Controller.text.isEmpty ||
        sisi3Controller.text.isEmpty ||
        sisi4Controller.text.isEmpty) {
      showSnackbar(context, 'Field sisi 1, 2, 3 dan 4 tidak boleh kosong', Colors.red);
      return;
    }
    showSnackbar(context, 'Keliling Trapesium adalah ${sisi1 + sisi2 + sisi3 + sisi4}', Colors.green);
  }

  void showSnackbar(BuildContext context, String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }

}
