import 'package:flutter/material.dart';
import 'screens/pantalla_logo.dart'; //primera pantalla
import 'screens/pantalla_inicio.dart'; //pantalla inicio
import 'screens/pantalla_luis_a.dart'; //pantalla luis a

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
         '/logo': (context) => const PantallaLogo(), // Ruta para la PantallaLogo
        '/patrimonio': (context) => const PantallaInicio(), // Se define la ruta para la pantalla del mapa
        '/luis_a': (context) => const PantallaLuisA(), // Ruta para la pantalla luis A
      },
    );
  }
}
