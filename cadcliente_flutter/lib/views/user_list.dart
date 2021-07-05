

import 'package:cadcliente_flutter/components/user_title.dart';
import 'package:cadcliente_flutter/data/dummy_users.dart';
import 'package:cadcliente_flutter/models/user.dart';
import 'package:cadcliente_flutter/provider/users.dart';
import 'package:cadcliente_flutter/routes/app_routs.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget{
@override
Widget build(BuildContext context){
  final Users users = Provider.of(context);
  return Scaffold(
      appBar: AppBar(
        title: Text('Lista de contatos'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              Navigator.of(context).pushNamed(
                AppRouts.USER_FORM
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
      itemCount:users.count ,
      itemBuilder:(ctx, i) => UserTitle(users.byIndex(i)),
      ),
  );
}



}