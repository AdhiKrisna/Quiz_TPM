import 'package:flutter/material.dart';
import 'package:quiz_tpm/pages/menu.dart';
import 'package:quiz_tpm/routes/route_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      onGenerateRoute: RoutePages.generateRoute,
      home: const MenuPage(),
    );
  }
}
