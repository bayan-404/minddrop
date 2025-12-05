import 'package:flutter/material.dart';
import 'package:minddrop/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color(0xFFFFF4D4)),
      home: const HomeScreen(),
    );
  }
}
