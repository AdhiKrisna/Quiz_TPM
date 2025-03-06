
import 'package:flutter/widgets.dart';

class HariController {
  TextEditingController hariController = TextEditingController();
  static List<String> hari = [
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    'Jumat',
    'Sabtu',
    'Minggu'
  ];

  String hitungHari(int index) {
    if(index < 1 || index > 7) {
      return 'Tidak ada hari ke-$index';
    }
    return hari[index-1];
  }
  
}