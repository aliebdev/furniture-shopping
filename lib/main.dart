import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'main/main_screen.dart';
import 'theme/colors.dart';

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
        primaryColor: Colors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          unselectedItemColor: AppColors.darkGrey,
          selectedItemColor: AppColors.black,
          type: BottomNavigationBarType.fixed,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: const MainScreen(),
    );
  }
}
