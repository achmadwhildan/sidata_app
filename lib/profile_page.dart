import 'package:flutter/material.dart';
import 'package:sidata_app/navbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (Colors.white),
      body: Column(
        children: [
          HeaderProfile(
            nama: "Anak Wikrama",
            kelas: "PPLG XII-5",
            imagePath: "assets/images/gwehj.jpg",
            )
        ],
      ),
    );
  }
}