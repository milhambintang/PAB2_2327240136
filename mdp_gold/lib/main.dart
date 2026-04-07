import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:mdp_gold/screens/price_list_screen.dart';

void main() async {
  // Pastikan Flutter binding sudah diinisialisasi sebelum menggunakan Firebase
  WidgetsFlutterBinding.ensureInitialized();
  // Inisialisasi Firebase dengan opsi yang sesuai untuk platform saat ini
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PriceListScreen()
    );
  }
}
