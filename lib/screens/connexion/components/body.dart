import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
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
                              color: Colors.blue[600],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 100),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(8),
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
                      suffixIcon: Icon(Icons.remove_red_eye_sharp),
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left: 210.0),
                    child: Text("Mot de passe oublié ?"),
                  ),
                  Spacer(),
                  SizedBox(
                    child: Container(
                        width: size.width,
                        height: size.height * 0.05,
                        decoration: BoxDecoration(
                          color: const Color(0xff3737a0),
                          //  borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text(
                            "Continuer",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )),
                  ),
                  Spacer(flex: 3),
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
              color: const Color.fromRGBO(33, 150, 243, 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset(
                    "asset/icon/Flag_of_Cameroon.svg",
                    height: 22,
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
    );
  }
}
