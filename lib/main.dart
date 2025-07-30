import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_piece_bounty/my_splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySplash(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        textTheme: GoogleFonts.luckiestGuyTextTheme(),
      ),
    );
  }
}
