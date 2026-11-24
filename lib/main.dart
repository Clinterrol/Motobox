import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/details_screen.dart';

void main() => runApp(const MotoBoxApp());

class MotoBoxApp extends StatelessWidget {
  const MotoBoxApp({super.key});

  static const Color orange = Color(0xFFE8431C);
  static const Color dark = Color(0xFF222222);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MotoBox',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: orange, primary: orange),
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: orange),
          titleMedium: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: dark),
          bodyMedium: TextStyle(fontSize: 13, color: dark),
        ),
      ),
      // PREVIEW: swap between the two screens
      home: const HomeScreen(),
      // home: const DetailsScreen(),
    );
  }
}