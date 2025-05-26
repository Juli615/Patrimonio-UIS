import 'package:flutter/material.dart';
import 'screens/pantalla_logo.dart'; //primera pantalla
import 'screens/pantalla_inicio.dart'; //pantalla inicio

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PantallaLogo(), // La pantalla que se muestra al inicio

      // Aca se definen las rutas para las otras pantallas
      routes: {
        '/patrimonio': (context) => const PantallaInicio(), // Se define la ruta para la pantalla del mapa
      },
    );
  }
}
