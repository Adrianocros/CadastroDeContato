//classe para controlar os usuarios

import 'package:cadcliente_flutter/data/dummy_users.dart';
import 'package:cadcliente_flutter/models/user.dart';
import 'package:flutter/material.dart';

class Users with ChangeNotifier{
  final Map<String, User>_items = {...DUMMY_USER};

List<User> get all{
  return [..._items.values];
}

int get count{
  return _items.length;
}

User byIndex(int i ){
  return _items.values.elementAt(i);
}


}