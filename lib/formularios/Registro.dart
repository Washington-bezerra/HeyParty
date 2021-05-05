import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';

class Registro extends StatelessWidget{

  final _form =  GlobalKey<FormState>();

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
            key: _form,
            child:
            Column(
              children: <Widget>[
                TextFormField(
                    style: TextStyle(fontSize: 24.0),
                    decoration: InputDecoration(
                        labelText: 'Nome completo',
                    ),
                    // ignore: missing_return
                    validator: (value){
                      if(value == null || value.trim().isEmpty){
                        return 'Nome inválido';
                      }
                    },
                    onSaved: (value){
                      print('$value');
                    },

                  ),
                TextFormField(
                  style: TextStyle(fontSize: 24.0),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'CPF',
                    hintText: 'Somente numeros',
                    ),
                  // ignore: missing_return
                  validator: (value){
                    if(value == null || value.trim().isEmpty){
                      return 'CPF inválido';
                    }
                    if (value.length < 11){
                      return 'O CPF deve conter no minimo 11 digitos';
                    }
                  },
                  onSaved: (value){
                    print('$value');
                  },
                  ),
                TextFormField(
                  style: TextStyle(fontSize: 24.0),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Celular',
                      hintText: 'DDD + Numero do celular'
                    ),
                  // ignore: missing_return
                  validator: (value){
                    if(value == null || value.trim().isEmpty){
                      return 'Numero do celular inválido';
                    }
                    if (value.length < 11){
                      return 'O numero de celular deve conter no minimo 11 digitos';
                    }
                  },
                  onSaved: (value){
                    print('$value');
                  },
                  ),
                TextFormField(
                  style: TextStyle(fontSize: 24.0),
                  decoration: InputDecoration(labelText: 'Email'),
                  // ignore: missing_return
                  validator: (value){
                    if(value == null || value.trim().isEmpty){
                      return 'Email inválido';
                    }
                    if(value.indexOf('@') < 0){
                      return 'O Email deve conter pelo menos um @';
                    }
                  },
                  onSaved: (value){
                    print('$value');
                  },
                  ),
                TextFormField(
                  obscureText: true,
                  style: TextStyle(fontSize: 24.0),
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    hintText: 'No minimo 8 caracteres'
                    ),
                  // ignore: missing_return
                  validator: (value){
                    if(value == null || value.trim().isEmpty){
                      return 'Senha inválido';
                    }
                    if (value.length < 8){
                      return "A Senha deve ter no minimo 8 caracteres";
                    }
                  },
                  onSaved: (value){
                    print('$value');
                  },
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
                    final isValid = _form.currentState.validate();
                    if (isValid){
                      //fecha o teclado
                      FocusScope.of(context).requestFocus(FocusNode());
                      //tela anterior (login)
                      Navigator.of(context).pop();
                      Toast.show("Conta criada \\o/",
                        context,
                        duration: Toast.LENGTH_LONG,
                        gravity:  Toast.BOTTOM,
                        backgroundColor: Colors.deepPurpleAccent[700],
                      ); //Toast
                    }

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