import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture Shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const MainScreen(),
    );
  }
}
