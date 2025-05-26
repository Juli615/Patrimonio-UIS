import 'package:flutter/material.dart';

class PantallaInicial extends StatelessWidget {
  const PantallaInicial({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo PNG a pantalla completa sin opacidad (Container con DecorationImage)
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

          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromARGB(185, 80, 80, 80).withValues(),
          ),

          Positioned(
            left: 78,  // Posición X de Figma
            top: 198,  // Posición Y de Figma
            child: Opacity( 
              opacity: 0.7, 
              child: Image.asset(
                'assets/images/caminito.png',
                width: 333.6,
                height: 440.7,
              ),
            ),
          ),

          // Posicionamiento del logo con X e Y de Figma
          Positioned(
            left: 141.1, // Posición X de Figma para el logo
            top: 315,    // Posición Y de Figma para el logo
            child: Image.asset(
              'assets/images/logo_uis.png',
              width: 129.5,
              height: 149.9,
            ),
          ),

          // El texto PATRIUIS es el único que queda en el Column central ahora
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 500), // Ajusta este height para posicionar el texto verticalmente
                const Text(
                  'PATRIUIS',
                  style: TextStyle(
                    color: Colors.white,
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