import 'package:carteiradigital/components/CampoInput.dart';
import 'package:carteiradigital/formularios/Registro.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget{

  final TextEditingController _controladorCampoLogin =
  TextEditingController();

  final TextEditingController _controladorCampoSenha =
  TextEditingController();

  Widget build(BuildContext context) {
    // TODO: implement createState
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Login',),
        actions: <Widget>[
          //modo dark
          IconButton(
              icon: Icon(Icons.lightbulb_outline),
              onPressed: () {
                return MaterialApp(
                    theme: ThemeData.dark(

                    ),
                );
              },
          )
        ],
      ),

    body: Column(
      children: <Widget>[
        CampoInput(
          obscure: false,
          controlador: _controladorCampoLogin,
          rotulo: 'User',
          dica: 'CPF ou e-mail',
          icone: Icons.account_circle,),
        CampoInput(
          obscure: true,
          controlador: _controladorCampoSenha,
          rotulo: 'Senha',
          dica: 'Senha',
          icone: Icons.lock,),


        ElevatedButton.icon(
          label: Text('Sign In'),
          icon: Icon(Icons.login),
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurpleAccent[700],
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            onPrimary: Colors.white,
            shadowColor: Colors.black,
            elevation: 5,
            textStyle: TextStyle(
                fontSize: 24
            ),
          ),//style
          onPressed: () {
          },
        ),

        ElevatedButton.icon(
          label: Text('Sign Up'),
          icon: Icon(Icons.assignment),
          style: ElevatedButton.styleFrom(
            primary: Colors.green[300],
            padding: const EdgeInsets.all(8.0),
            onPrimary: Colors.white,
            shadowColor: Colors.black,
            elevation: 5,
            textStyle: TextStyle(
                fontSize: 24
            ),
          ),//style
          onPressed: () {
            // ignore: unnecessary_statements
            Navigator.of(context).push(_createRoute());
          },
        ),

      ],
    ),


    );
  }

}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Registro(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}