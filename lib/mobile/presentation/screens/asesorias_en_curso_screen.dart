import 'package:flutter/material.dart';
import 'package:prueba_proyecto_asesorias/mobile/presentation/widgets/menu_lateral.dart';

class AsesoriasEnCursoScreen extends StatelessWidget {
  const AsesoriasEnCursoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        title: const Text("Asesorías en curso"),
        centerTitle: true,
      ),

      drawer: MenuLateral(),

      body: const Center(
        child: Text("Offroad is so beautiful"),
      ),
    );
  }
}