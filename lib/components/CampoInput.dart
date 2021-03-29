import 'package:flutter/material.dart';

class CampoInput extends StatelessWidget{
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;
  final bool obscure;

  CampoInput({this.controlador, this.rotulo, this.dica, this.icone, this.obscure});

  @override
  Widget build(BuildContext context) {
    return Padding(
      //espaçamento das bordas
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        obscureText: obscure,
        controller: controlador,
        style: TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          icon: icone!= null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
        ),
      ),
    );
  }

}