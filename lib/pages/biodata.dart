import 'package:flutter/material.dart';

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Biodata'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            Text("Nama : Made Vidyatma Adhi Krisna"),
            Text("NIM : 123220038"),
            Text("Kelas : IF-H"),
            Text("Hobi : Mendaki Gunung"),
            Image.asset('assets/krisna.jpg'),
          ],
        ),
      ),
    );
  }
}
