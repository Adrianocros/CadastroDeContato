
import 'package:flutter/material.dart';
import 'package:cadcliente_flutter/models/user.dart';
import 'package:cadcliente_flutter/provider/users.dart';
import 'package:provider/provider.dart';


class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

@override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Fromulario de cadastro'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final isValid =  _form.currentState.validate();
              if(isValid){
                _form.currentState.save();
                
             Provider.of<Users>(context, listen: false).put(
                  User(
                    id: _formData['id'],
                    name: _formData['name'],
                    email: _formData['email'],
                    avatarUrl: _formData['avatarUrl'],
                  ),
                );
              Navigator.of(context).pop();
            }
            },          
          ),
        ],
      ),
      //Formulario
      body: Padding(
        padding: EdgeInsets.all(15),
      child: Form(
        key: _form,
        child: Column(
          children:<Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Nome'),
              validator: (value){
                if(value == null || value.trim().isEmpty){
                    return 'Informe um nome para cadastro !';
                }

                if(value.trim().length < 3){
                  return 'Nome pequeno. Minimo 3 letras !';
                }
                return null;
              },
              onSaved: (value) => _formData['name'] = value,            
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'E-Mail'),
               onSaved: (value) => _formData['email'] = value,     
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Avatar'),
               onSaved: (value) => _formData['avatarUrl'] = value,     
            ),
          ]
          ),
      )
      ),
    );
  }

}