import 'package:flutter/material.dart';
import 'package:neero/screens/connexion/components/body.dart';

class ConnexionScreen extends StatelessWidget {
  const ConnexionScreen({super.key});
  static String routeName = "/connexion";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
