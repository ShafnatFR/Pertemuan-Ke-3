import 'package:flutter/material.dart';
import 'package:test/navbar.dart'; // Pastikan file navbar.dart ada di folder yang benar

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const Navbar(), // Gunakan Navbar sebagai home
    );
  }
}
