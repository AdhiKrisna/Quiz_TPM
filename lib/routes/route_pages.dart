import 'package:flutter/material.dart';
import 'package:quiz_tpm/pages/biodata.dart';
import 'package:quiz_tpm/pages/hari.dart';
import 'package:quiz_tpm/pages/kubus.dart';
import 'package:quiz_tpm/pages/menu.dart';
import 'package:quiz_tpm/pages/trapesium.dart';
import 'package:quiz_tpm/routes/route_names.dart';
class   RoutePages {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.menu:
        return MaterialPageRoute(builder: (_) =>  const MenuPage());
      case RouteName.trapesium:
        return MaterialPageRoute(builder: (_) =>  const TrapesiumPage());
      case RouteName.kubus:
        return MaterialPageRoute(builder: (_) =>  const KubusPage());
      case RouteName.hari:
        return MaterialPageRoute(builder: (_) =>  const HitungHari());
      case RouteName.biodata:
        return MaterialPageRoute(builder: (_) =>  const BiodataPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('404 - Page Not Found')),
          ),
        );
    }
  }
}