import 'package:cadcliente_flutter/provider/users.dart';
import 'package:cadcliente_flutter/routes/app_routs.dart';
import 'package:cadcliente_flutter/views/user_forma.dart';
import 'package:cadcliente_flutter/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create:(ctx)=> Users(),
    )
    ],
    child:MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(   
          primarySwatch: Colors.blue,
        ),
         routes: {
          AppRouts.HOME:(_) => UserList(),
          AppRouts.USER_FORM:(_) => UserForm()
        },
      ),
    );
  }
}

