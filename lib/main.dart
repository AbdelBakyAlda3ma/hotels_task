import 'package:flutter/material.dart';
import 'package:hotels_task/presentation/screens/hotels_search_screen.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff196cba),
        ),
        useMaterial3: true,
      ),
      home: const HotelsSearchScreen(),
    );
  }
}
