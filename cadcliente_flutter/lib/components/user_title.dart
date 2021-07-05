import 'package:cadcliente_flutter/routes/app_routs.dart';
import 'package:flutter/material.dart';
import 'package:cadcliente_flutter/models/user.dart';

class UserTitle extends StatelessWidget {

  final User user;

  const UserTitle(this.user);

@override
Widget build(BuildContext context){
  final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
    ? CircleAvatar(child: Icon(Icons.person))
    :CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
  return ListTile(
    leading: avatar,
    title: Text(user.name),
    subtitle: Text(user.email),
    trailing:Container(
      width: 100,
    child: Row(
      children: <Widget>[
       IconButton(
         icon: Icon(Icons.edit),
         color: Colors.orange,
         onPressed: (){
           Navigator.of(context).pushNamed(
             AppRouts.USER_FORM, 
             arguments: user,
           );
           },
       ),
      IconButton(
        icon: Icon(Icons.delete),
        color: Colors.red,
        onPressed: (){},
      )
      ],
    ),
  ),
  );
}
  
}