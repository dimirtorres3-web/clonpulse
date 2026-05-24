import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const GeoPulseApp());
}

class GeoPulseApp extends StatelessWidget {
  const GeoPulseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GeoPulse AI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}