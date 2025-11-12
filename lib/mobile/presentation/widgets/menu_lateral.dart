import 'package:flutter/material.dart';

class MenuLateral extends StatefulWidget {
  const MenuLateral({super.key});

  @override
  State<MenuLateral> createState() => _MenuLateralState();
}

class _MenuLateralState extends State<MenuLateral> {
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(

      

      children: [
        
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            'https://lh6.googleusercontent.com/proxy/BBcD6bv8aC2dILeWVFAicYHDPQm92bVjgZNhwa5O39qoJwjVt6AYzdA2LpeDg78U8rmVbO1dO09Lf_d_sQl6CwcJFHIt8TdTRVS2LxHXivccGTAHv8s',
            
          ),
        ),

        NavigationDrawerDestination(
          icon: Container(),
          label: Text('Asesorias en curso'),
        ),

        NavigationDrawerDestination(
          icon: Container(),
          label: Text('Solicitudes pendientes'),
        ),

        NavigationDrawerDestination(
          icon: Container(),
          label: Text('Reportes'),
        ),

        NavigationDrawerDestination(
          icon: Container(),
          label: Text('Asesores diciplinares'),
        ),

        NavigationDrawerDestination(
          icon: Container(),
          label: Text('Asesores par'),
        ),

        NavigationDrawerDestination(
          icon: Container(),
          label: Text('Estudiantes'),
        ),

        SizedBox(height: 90,),

        NavigationDrawerDestination(
          icon: Icon(Icons.logout),
          label: Text('Cerrar Sesion')
          ),
      ],
    );
  }
}
