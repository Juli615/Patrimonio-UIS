import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PantallaInicial extends StatelessWidget {
  const PantallaInicial({super.key});

 @override
Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      children: [
        // Fondo PNG a pantalla completa sin opacidad
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fondo_uis.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Contenido centrado
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Logo como imagen PNG
              Image.asset(
                'assets/images/logo_uis.png',
                width: 129.5,
                height: 149.9,
              ),

              const SizedBox(height: 30),

              // Texto
              const Text(
                'PATRIUIS',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 42,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

}