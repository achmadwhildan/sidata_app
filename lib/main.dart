import 'package:flutter/material.dart';
import 'package:sidata_app/navbar.dart';
import 'package:sidata_app/profile_page.dart';
import 'package:sidata_app/progress_belajar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
    Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jurnalku',
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}