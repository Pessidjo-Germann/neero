import 'package:flutter/material.dart';
import 'package:neero/screens/passoword/components/body.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});
  static String routeName = "/password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mot de passe oublié",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: const Body(),
    );
  }
}
