import 'package:flutter/material.dart';
import 'package:neero/screens/connexion/connexionScreen.dart';
import 'package:neero/screens/passoword/components/passwordScreen.dart';
import 'package:neero/screens/todolist/todo_screen.dart';

final Map<String, WidgetBuilder> route = {
  ConnexionScreen.routeName: (context) => const ConnexionScreen(),
  PasswordScreen.routeName: (context) => const PasswordScreen(),
  TodoScreen.routeName: (context) => const TodoScreen()
};
