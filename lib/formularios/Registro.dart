import 'package:carteiradigital/components/CampoInput.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Registro extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cadastre-se',),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            child:
            Column(
              children: <Widget>[
                  TextFormField(
                    style: TextStyle(fontSize: 24.0),
                    decoration: InputDecoration(
                        labelText: 'Nome completo',
                    ),

                  ),
                TextFormField(
                  style: TextStyle(fontSize: 24.0),
                  decoration: InputDecoration(
                    labelText: 'CPF',
                    hintText: 'Somente numeros',
                    ),
                  ),
                TextFormField(
                  style: TextStyle(fontSize: 24.0),
                  decoration: InputDecoration(
                      labelText: 'Celular',
                      hintText: 'DDD + Numero do celular'
                    ),
                  ),
                TextFormField(
                  style: TextStyle(fontSize: 24.0),
                  decoration: InputDecoration(labelText: 'Email'),
                  ),
                TextFormField(
                  obscureText: true,
                  style: TextStyle(fontSize: 24.0),
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    hintText: 'No minimo 8 caracteres'
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: ElevatedButton.icon(
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
                    //Navigator.of(context).push(_createRoute());
                  },
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}