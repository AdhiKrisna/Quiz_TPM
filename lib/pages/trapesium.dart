import 'package:flutter/material.dart';
import 'package:quiz_tpm/controllers/trapesium_controller.dart';
import 'package:quiz_tpm/pages/widgets/textfield_widget.dart';

class TrapesiumPage extends StatefulWidget {
  const TrapesiumPage({super.key});

  @override
  State<TrapesiumPage> createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  final TrapesiumController controller = TrapesiumController();

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hitung Trapesium'), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hitung Luas Input Sisi Atas, Sisi Bawah, dan Tinggi',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextfieldWidget(
                  controller: controller.sisi1Controller,
                  hintText: 'Masukkan sisi atas',
                ),
                const SizedBox(height: 10),
                TextfieldWidget(
                  controller: controller.sisi2Controller,
                  hintText: 'Masukkan sisi bawah',
                ),
                const SizedBox(height: 10),
        
                TextfieldWidget(
                  controller: controller.tinggiController,
                  hintText: 'Masukkan tinggi',
                ),
                const SizedBox(height: 10),
                Container(height: 10, color: Colors.blue),
                const SizedBox(height: 10),
                Text(
                  'Hitung Keliling Input Sisi Atas, Sisi Bawah, Sisi Miring Kiri, dan Sisi Miring Kanan',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
        
                TextfieldWidget(
                  controller: controller.sisi3Controller,
                  hintText: 'Masukkan sisi miring kiri',
                ),
                const SizedBox(height: 10),
                TextfieldWidget(
                  controller: controller.sisi4Controller,
                  hintText: 'Masukkan sisi miring kanan',
                ),
                const SizedBox(height: 10),
        
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
                        Text('Hitung Luas', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    onPressed: () {
                      controller.hitungLuas(
                        context,
                        double.tryParse(controller.sisi1Controller.text) ?? 0,
                        double.tryParse(controller.sisi2Controller.text) ?? 0,
                        double.tryParse(controller.tinggiController.text) ?? 0,
                      );
                     
                    },
                  ),
                ),
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
                        Text('Hitung Keliling', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    onPressed: () {
                      controller.hitungKeliling(
                        context,
                        double.tryParse(controller.sisi1Controller.text) ?? 0,
                        double.tryParse(controller.sisi2Controller.text) ?? 0,
                        double.tryParse(controller.sisi3Controller.text) ?? 0,
                        double.tryParse(controller.sisi4Controller.text) ?? 0,
                      );
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
}
