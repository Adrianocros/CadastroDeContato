

import 'package:cadcliente_flutter/data/dummy_users.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget{
@override
Widget build(BuildContext context){
  const users = {...DUMMY_USER};
  return Scaffold(
      appBar: AppBar(
        title: Text('Lista de contatos'),
      ),      
    body: ListView.builder(
      itemCount:users.length ,
      itemBuilder:(ctx, i) => Text(users.values.elementAt(i).name),
      ),
  );
}



}