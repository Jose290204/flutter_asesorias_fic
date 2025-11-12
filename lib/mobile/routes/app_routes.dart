import 'package:flutter/material.dart';

import '../presentation/screens/asesorias_en_curso_screen.dart';
import '../presentation/screens/login_screen.dart';

class AppRoutes {

  static const initialRoute = '/login';

  static Map <String, WidgetBuilder> routes = {
    
    '/login': (context) => const LoginScreen(),
    '/asesoriasEnCurso': (context) => const AsesoriasEnCursoScreen(),

  };

}
