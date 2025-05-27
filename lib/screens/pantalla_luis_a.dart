import 'package:flutter/material.dart';

class PantallaLuisA extends StatelessWidget {
  const PantallaLuisA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/luis_a_fondo.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover, 
          ),
          
         // Fondo del título (sin el texto dentro)
          Positioned(
            left: 137.59, // Coordenada X del fondo del título
            top: 43,     // Coordenada Y del fondo del título
            child: Container(
              width: 274.41, // Ancho del fondo del título
              height: 179,   // Alto del fondo del título
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/fondo_titulo_luis.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          // Texto "Luis A. Calvo" posicionado directamente
          Positioned(
            left: 174, // Posición X del texto
            top: 47,  // Posición Y del texto
            child: SizedBox(
              width: 270, // Ancho y alto del texto
              height: 92,
              child: Text(
                'Luis A. \nCalvo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  height: 1.20,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 2),
                      blurRadius: 2,
                      color: Color(0xFF000000),
                    )
                  ],
                ),
              ),
            ),
          ),

           // Botón "Arquitectos"
          Positioned(
            left: 201, // Posición X
            top: 344,  // Posición Y
            child: SizedBox(
              width: 50, // Medidas 50x50
              height: 50,
              child: Image.asset(
                'assets/images/btn_arquitectos.png',
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Botón "Información"
          Positioned(
            left: 334, // Posición X
            top: 524,  // Posición Y
            child: SizedBox(
              width: 50, // Medidas 50x50
              height: 50,
              child: Image.asset(
                'assets/images/btn_info.png',
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Personaje
          Positioned(
            left: 13,   // Posición X
            top: 630,   // Posición Y
            child: SizedBox(
              width: 145, // Medidas 145x213
              height: 213,
              child: Image.asset(
                'assets/images/personaje.png',
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Diálogo
          Positioned(
            left: 144, // Posición X
            top: 593,  // Posición Y
            child: SizedBox(
              width: 230, // Medidas 230x145
              height: 145,
              child: Image.asset(
                'assets/images/dialogo.png',
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Botón "Siguiente"
          Positioned(
            left: 223, // Posición X
            top: 852,  // Posición Y
            child: SizedBox(
              width: 164, // Medidas 164x47
              height: 47,
              child: Image.asset(
                'assets/images/btn_siguiente.png', 
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Botón "Atrás"
          Positioned(
            left: 18,   // Posición X
            top: 852,  // Posición Y
            child: SizedBox(
              width: 104, // Medidas 104x47
              height: 47,
              child: Image.asset(
                'assets/images/btn_atras.png',
                fit: BoxFit.contain,
              ),
            ),
          ),

          // Si se necesita agregar algo mas, es de aqui para abajo
        ],
      ),
    );
  }
}