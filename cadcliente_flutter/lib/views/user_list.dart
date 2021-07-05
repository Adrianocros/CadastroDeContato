

import 'package:cadcliente_flutter/components/user_title.dart';
import 'package:cadcliente_flutter/data/dummy_users.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget{
@override
Widget build(BuildContext context){
  final users = {...DUMMY_USER};
  return Scaffold(
      appBar: AppBar(
        title: Text('Lista de contatos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){},
          )
        ],
      ),
      body: ListView.builder(
      itemCount:users.length ,
      itemBuilder:(ctx, i) => UserTitle(users.values.elementAt(i)),
      ),
  );
}



}