import 'package:flutter/material.dart';

import '../../../constante.dart';
import '../../connexion/components/body.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool isColumn = false;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          children: [
            const SizedBox(height: 125),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "neero",
                      textScaleFactor: 3,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: 7,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 100),
            Text(
              "Entrez le numéro de téléphone lié à votre compte",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.all(8),
                prefixIcon: contentDrag(
                  isColumn: isColumn,
                  press: () {
                    setState(() {
                      isColumn = !isColumn;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 55),
            SizedBox(
              child: Container(
                width: size.width,
                height: size.height * 0.05,
                decoration: const BoxDecoration(
                  color: kprimaryColor,
                  //  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    "Suivant",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
