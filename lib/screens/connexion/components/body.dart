import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neero/constante.dart';
import 'package:neero/screens/passoword/components/passwordScreen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isColumn = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Center(
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
                  const SizedBox(height: 10),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(8),
                      labelText: 'Mot de passe',
                      suffixIcon: Icon(
                        Icons.remove_red_eye_sharp,
                        color: kprimaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, PasswordScreen.routeName);
                        },
                        child: const Text(
                          "Mot de passe oublié ?",
                          style: TextStyle(
                            fontSize: 18,
                            color: kprimaryColor,
                          ),
                        ),
                      ),
                    ],
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
                          "Se connecter",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Vous n'avez pas de compte ?",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "S'inscrire",
                        style: TextStyle(
                          fontSize: true ? 6 : 2,
                          fontWeight: FontWeight.bold,
                          color: kprimaryColor,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class contentDrag extends StatelessWidget {
  contentDrag({
    super.key,
    required this.isColumn,
    required this.press,
  });

  bool isColumn = false;
  final GestureCancelCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: isColumn
          ? Container(
              width: 70,
              height: 250,
              color: Colors.red,
            )
          : Container(
              width: 70,
              height: 45,
              color: kprimaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset(
                    "asset/icon/Flag_of_Cameroon.svg",
                    height: 22,
                  ),
                  const Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
    );
  }
}
