import 'package:flutter/material.dart';
import 'package:test/comunityPage.dart';
import 'package:test/homePage.dart';
import 'package:test/profilPage.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;

  List pages = [Homepage(), Comunitypage(), Profilpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex], // Menampilkan halaman sesuai indeks
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, // Indeks aktif
        onTap: (index) {
          setState(() {
            currentIndex = index; // Ubah halaman saat tombol ditekan
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Community'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
