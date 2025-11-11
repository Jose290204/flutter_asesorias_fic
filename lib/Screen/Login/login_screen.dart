import 'package:flutter/material.dart';
import 'package:prueba_proyecto_asesorias/values/colores.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Appcolores.azulUas,

      body: Center(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: ContenedorLogin(
            //Imagen

            //Inputs

            //Boton
          ),
        ),
      ),
    );
  }
}

//Widget perzonalizado pra el contenedor, aqui se incluye el cuerpo del login

class ContenedorLogin extends StatelessWidget {
  const ContenedorLogin({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    

    return Padding(
      padding: EdgeInsets.only(top: 90),
      child: Container(
        width: size.width * 1,
        height: size.height * 0.7,
        padding: EdgeInsets.symmetric(horizontal: 55, vertical: 20),
        decoration: BoxDecoration(
          color: Appcolores.gris,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
            bottom: Radius.zero,
          ),
        ),
      
        child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Imagen(),
              SizedBox(height: 30),
              FormularioLogin(),
            ],
          ),
      ),
    );
  }
}

//Perzonalizacion del login, se incluyen los inputs y el boton para ingresar

class FormularioLogin extends StatefulWidget {
  const FormularioLogin({super.key});

  @override
  State<FormularioLogin> createState() => _FormularioLoginState();
}

class _FormularioLoginState extends State<FormularioLogin> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          InputStyle(
            labelTexto: 'No. Cuenta',
            icon: Icons.person,
            colorIcon: Appcolores.amarilloUas,
          ),
          SizedBox(height: 15),
          InputStyle(
            labelTexto: 'NiP',
            icon: Icons.lock,
            colorIcon: Appcolores.azulUas,
          ),
          SizedBox(height: 30),
          BotonIngresar(formKey: _formKey),
        ],
      ),
    );
  }
}

//Estilo y funcion de verificacion del boton

class BotonIngresar extends StatelessWidget {
  const BotonIngresar({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Appcolores.azulUas,
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
      ),
    
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Prosesando la informacion')),
          );
        }
      },
      child: Text('Ingresar'),
    );
  }
}

//Widget para perzonalizar una sola vez los inputs y utilizarlo solo agregando los parametros necesarios

class InputStyle extends StatelessWidget {
  final String labelTexto;
  final IconData icon;
  final Color colorIcon;

  const InputStyle({
    super.key,
    required this.labelTexto,
    required this.icon,
    required this.colorIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: colorIcon, size: 18),
        filled: true,
        fillColor: Colors.white,

        //border: OutlineInputBorder(borderSide: BorderSide()),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 165, 165, 165),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),

        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 165, 165, 165),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),

        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 239, 91, 91),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 239, 91, 91),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),

        hintText: labelTexto,
        hintStyle: TextStyle(
          color: Color(0xFFb4b4b4),
          fontWeight: FontWeight.bold,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),

      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Porfavor llene este campo';
        }
        return null;
      },
    );
  }
}

//Estilo de la imagen del logo de la fic

class Imagen extends StatelessWidget {
  const Imagen({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.network(
        "https://lh6.googleusercontent.com/proxy/BBcD6bv8aC2dILeWVFAicYHDPQm92bVjgZNhwa5O39qoJwjVt6AYzdA2LpeDg78U8rmVbO1dO09Lf_d_sQl6CwcJFHIt8TdTRVS2LxHXivccGTAHv8s",
        width: 220,
      ),
    );
  }
}
