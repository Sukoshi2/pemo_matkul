import 'package:flutter/material.dart'; 
class Palette { 
  static const MaterialColor kToDark = const MaterialColor( 
    0xFFEA4D58, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch. 
    const <int, Color>{ 
      50: const Color(0xffd3454f ),//10% 
      100: const Color(0xffbb3e46),//20% 
      200: const Color(0xffa4363e),//30% 
      300: const Color(0xff8c2e35),//40% 
      400: const Color(0xff75272c),//50% 
      500: const Color(0xff5e1f23),//60% 
      600: const Color(0xff46171a),//70% 
      700: const Color(0xff2f0f12),//80% 
      800: const Color(0xff170809),//90% 
      900: const Color(0xff000000),//100% 
    }, 
  ); 
} 