import 'package:flutter/material.dart';

import '../../../constante.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                    Text(
                      "proche de tout le monde",
                      style: TextStyle(
                        fontSize: 18,
                        color: kprimaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 100),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(8),
                labelText: 'Entrer votre email',
                suffixIcon: Icon(
                  Icons.remove_red_eye_sharp,
                  color: kprimaryColor,
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
                    "Envoyer",
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
