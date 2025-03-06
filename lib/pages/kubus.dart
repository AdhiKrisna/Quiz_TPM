import 'package:flutter/material.dart';
import 'package:quiz_tpm/controllers/kubus_controller.dart';
import 'package:quiz_tpm/pages/widgets/textfield_widget.dart';

class KubusPage extends StatefulWidget {
  const KubusPage({super.key});

  @override
  State<KubusPage> createState() => _KubusPageState();
}

class _KubusPageState extends State<KubusPage> {
  final KubusController controller = KubusController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hitung Kubus'), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hitung Volume dan Keliling Kubus',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                TextfieldWidget(
                  controller: controller.sisiController,
                  hintText: 'Masukkan panjang sisi',
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
                        Text('Hitung Keliling', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    onPressed: () {
                      controller.hitungKelilingKubus(
                        context,
                          double.tryParse(controller.sisiController.text) ?? 0,
                      );
                    },
                  ),
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
                        Text('Hitung Volume', style: TextStyle(fontSize: 20)),
                      ],
                    ),
                    onPressed: () {
                      controller.hitungVolumeKubus(
                        context,
                        double.parse(controller.sisiController.text),
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
