//classe para controlar os usuarios

import 'dart:math';

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
//Method put conlcuido ele incere e altera o elemento
void put(User user){
  if(user == null){
    return;
  }
    //alterar
    if(user.id != null && 
        user.id.trim().isNotEmpty && 
        _items.containsKey(user.id)){
      _items.update(user.id, (value) => User(
        id: user.id, 
        name: user.name, 
        email: user.email, 
        avatarUrl: user.avatarUrl
        ),
      );
    }else{
      //incluir
    final id = Random().nextDouble().toString();
    _items.putIfAbsent(
      id,() => User(
    id:id,
    name:user.name,
    email:user.email,
    avatarUrl: user.avatarUrl,
  ),
  );
    }
  notifyListeners();
}

}