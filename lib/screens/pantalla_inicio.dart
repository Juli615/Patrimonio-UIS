import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget{
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // La barra de búsqueda
          Positioned(
            left: 38, // Posicion respecto a cada lado del frame de figma
            right: 42,
            top: 49,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Boton menu
                Container(
                  width: 38,
                  height: 38,
                  decoration: BoxDecoration(
                    color: const Color(0xFFAE431E), // Color naranja tierra
                    borderRadius: BorderRadius.circular(8),
                  ),
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 20), // Espacio
                // Campo de busqueda
                Expanded(
                  child: Container(
                    height: 38,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFD1D5DB), // Color del borde gris
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Color(0xFF6B7280), size: 18),
                        SizedBox(width: 8),
                        Text(
                          'Buscar edificios',
                          style: TextStyle(
                            color: Color(0xFF6B7280),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Título "Bienvenido al mapa UIS" con fondo y texto posicionado
          Positioned(
            left: 147, // Posición X y Y del contenedor en figma
            top: 139,
            child: Container(
              width: 274.5, // Ancho y alto exactos del contenedor de figma
              height: 141.8,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/fondo_titulo.png'),
                  fit: BoxFit.fill,
                ),
              ),
              // Posición del texto dentro del contenedor
              child: const Padding(
                padding: EdgeInsets.only(left: 14.0, top: 24.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Bienvenido al mapa UIS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // imagen del mapa (Image.asset)
          Positioned(
            left: 34, // Posiciones segun el figma
            top: 227,
            child: Image.asset(
              'assets/images/mapa_uis.png',
              width: 352,
              height: 209,
              fit: BoxFit.contain,
            ),
          ),
          // Fin de la seccion del mapa

          // Tarjetones de los edificios

          // Tarjetón 1 - Camilo Torres
          Positioned(
            left: 47, // Posiciones en figma
            top: 465,
            child: Container(
              width: 317, // tamaño en figma
              height: 122,
              child: Stack(
                children: [
                  // Fondo de la tarjeta (color BCCDA0)
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 317,
                      height: 122,
                      decoration: ShapeDecoration(
                        color: Color(0xFFBCCDA0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(10, 10),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  // Imagen del edificio (Camilo Torres)
                  Positioned(
                    left: 29.5,
                    top: 26.72,
                    child: Image.asset(
                      'assets/images/camilo_torres.png',
                      width: 103.5,
                      height: 69.17,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Etiqueta "Patrimonio tipo 1"
                  Positioned(
                    left: 160,
                    top: 46,
                    child: Container(
                      width: 140,
                      height: 28,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFD5663E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'Patrimonio tipo 1',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 1.20, // Ajuste aquí para evitar recorte
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Image.asset(
                            'assets/images/arrow_right.png',
                            width: 16,
                            height: 16,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Tarjetón 2 - Luis A. Calvo
          Positioned(
            left: 50,
            top: 616,
            child: Container(
              width: 317,
              height: 122,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 317,
                      height: 122,
                      decoration: ShapeDecoration(
                        color: Color(0xFFBCCDA0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(10, 10),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 35,
                    child: Image.asset(
                      'assets/images/luis_a_calvo.png',
                      width: 128.59,
                      height: 52.45,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 160,
                    top: 46,
                    child: Container(
                      width: 140,
                      height: 28,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFD5663E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'Patrimonio tipo 2',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 1.20, // Ajuste aquí para evitar recorte
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Image.asset(
                            'assets/images/arrow_right.png',
                            width: 16,
                            height: 16,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Tarjetón 3 - La Perla
          Positioned(
            left: 50,
            top: 767, 
            child: Container(
              width: 317,
              height: 122,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 317,
                      height: 122,
                      decoration: ShapeDecoration(
                        color: Color(0xFFBCCDA0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(10, 10),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 21,
                    top: 44,
                    child: Image.asset(
                      'assets/images/la_perla.png',
                      width: 119.4,
                      height: 33.7,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 160,
                    top: 46,
                    child: Container(
                      width: 140,
                      height: 28,
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFD5663E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              'Patrimonio tipo 3',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                height: 1.20, // Ajuste aquí para evitar recorte
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Image.asset(
                            'assets/images/arrow_right.png',
                            width: 16,
                            height: 16,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Fin de los tarjetones

          // Barra de navegación inferior
          Positioned(
            left: 0,
            right: 0,
            bottom: 0, // Posiciona la barra en la parte inferior
            child: Container(
              width: 412, // Ancho de Figma
              height: 69, // Alto de Figma
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F000000),
                    blurRadius: 4,
                    offset: Offset(0, -3), // Sombra hacia arriba
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround, // Distribuye los elementos uniformemente
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Item de Inicio
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.home,
                        color: const Color.fromARGB(255, 112, 53, 33),
                        size: 24, // Ajusta el tamaño del icono según necesidad
                      ),
                      const SizedBox(height: 4), // Espacio entre icono y texto
                      Text(
                        'Inicio',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 112, 53, 33),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  // Item de Retos
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/retos.png', // Tu asset para retos
                        width: 20, // Medidas según lo indicado
                        height: 20,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Retos',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF41502A),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  // Item de Perfil
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/perfil.png', // Tu asset para perfil
                        width: 38.03, // Medidas según lo indicado
                        height: 27,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Perfil',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF41502A),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}