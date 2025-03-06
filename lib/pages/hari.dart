import 'package:flutter/material.dart';
import 'package:quiz_tpm/controllers/hari_controller.dart';
import 'package:quiz_tpm/pages/widgets/textfield_widget.dart';

class HitungHari extends StatefulWidget {
  const HitungHari({super.key});
  
  @override
  State<HitungHari> createState() => _HitungHariState();
}

class _HitungHariState extends State<HitungHari> {
  final HariController controller = HariController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hitung Hari'), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hitung Hari',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                TextfieldWidget(
                  controller: controller.hariController,
                  hintText: 'Masukkan angka 1-7',
                ),
                const SizedBox(height: 20),
                 Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: 75,
                  padding: const EdgeInsets.all(10),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.calculate, size: 24, color: Colors.white),
                        Text('Hitung Hari', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    onPressed: () {
                      final result = controller.hitungHari(
                        int.tryParse(controller.hariController.text) ?? 0,
                      );
                      if (result != 'Tidak ada hari ke-0') {
                        showSnackbar(context, result, Colors.green);
                      } else {
                        showSnackbar(context, 'Angka harus 1-7', Colors.red);
                      }
                      
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
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