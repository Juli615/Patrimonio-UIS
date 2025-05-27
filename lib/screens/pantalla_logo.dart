import 'package:flutter/material.dart';

class PantallaLogo extends StatefulWidget {
  const PantallaLogo({super.key});

  @override
  State<PantallaLogo> createState() => _PantallaLogoState();
}

class _PantallaLogoState extends State<PantallaLogo> {

  @override
  void initState() {
    super.initState();
    // Llama a la función que maneja la navegación después de que el widget se ha inicializado
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 3));

    // Navega a la PantallaInicio (o /patrimonio) y LA MANTIENE en el historial de navegación.
    // Esto significa que el usuario PODRÁ volver a la PantallaLogo presionando el botón "atrás"
    if (mounted) {
      Navigator.pushNamed(context, '/patrimonio'); 
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo PNG a pantalla completa
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

          // Capa de color negro opaco sobre la imagen de fondo
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromRGBO(80, 80, 80, 0.725),
          ),

          // Posicionamiento del caminito con X e Y de Figma y opacidad
          Positioned(
            left: 78,
            top: 198,
            child: Opacity(
              opacity: 0.7, // Opacidad del caminito
              child: Image.asset(
                'assets/images/caminito.png',
                width: 333.6,
                height: 440.7,
              ),
            ),
          ),

          // Posicionamiento del logo con X e Y de Figma
          Positioned(
            left: 141.1,
            top: 315,
            child: Image.asset(
              'assets/images/logo_uis.png',
              width: 129.5,
              height: 149.9,
            ),
          ),

          // El texto PATRIUIS
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Ajusta este height para posicionar el texto verticalmente
                // Considerando que el logo termina en Y:315 + 149.9 (alto) = ~465.
                // Si el texto está debajo, 500 px puede ser un buen inicio.
                SizedBox(height: 500),
                const Text(
                  'PATRIUIS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42,
                    fontFamily: 'Poppins', // Asegúrate de que esta fuente esté en pubspec.yaml
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