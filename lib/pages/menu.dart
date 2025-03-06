import 'package:flutter/material.dart';
import 'package:quiz_tpm/routes/route_names.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                  spacing: 15,
                  children: [
                    Icon(Icons.calculate, size: 24, color: Colors.white),
                    const Text(
                      'Hitung Trapesium',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.trapesium);
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
                  spacing: 15,
                  children: [
                    Icon(Icons.calculate, size: 24, color: Colors.white),
                    const Text('Hitung Kubus', style: TextStyle(fontSize: 20)),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.kubus);
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
                  spacing: 15,
                  children: [
                    Icon(Icons.calculate, size: 24, color: Colors.white),
                    const Text('Hitung Hari', style: TextStyle(fontSize: 20)),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.hari);
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
                  spacing: 15,
                  children: [
                    Icon(Icons.calculate, size: 24, color: Colors.white),
                    const Text('Biodata', style: TextStyle(fontSize: 20)),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.biodata);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
