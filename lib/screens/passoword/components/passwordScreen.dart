import 'package:flutter/material.dart';
import 'package:neero/screens/passoword/components/body.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});
  static String routeName = "/password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Body(),
    );
  }
}
