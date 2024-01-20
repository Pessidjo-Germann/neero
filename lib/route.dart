import 'package:flutter/material.dart';
import 'package:neero/screens/connexion/connexionScreen.dart';
import 'package:neero/screens/passoword/components/passwordScreen.dart';

final Map<String, WidgetBuilder> route = {
  ConnexionScreen.routeName: (context) => const ConnexionScreen(),
  PasswordScreen.routeName: (context) => const PasswordScreen(),
};
