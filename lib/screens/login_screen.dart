import 'package:flutter/material.dart';
import 'map_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _handleLogin() {
    // Pasa directo al mapa de control para agilizar el desarrollo
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MapScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ingreso de Autoridades")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(controller: _emailController, decoration: const InputDecoration(labelText: "Correo Institucional")),
            TextField(controller: _passwordController, obscureText: true, decoration: const InputDecoration(labelText: "Contraseña")),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _handleLogin, child: const Text("Iniciar Sesión de Control"))
          ],
        ),
      ),
    );
  }
}