import 'package:coffee_ordering/colors.dart';
import 'package:coffee_ordering/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 150, bottom: 40),
        decoration: BoxDecoration(
          color: backColor,
          image: DecorationImage(
            image: AssetImage("img/welcome_screen.jfif"),
            fit: BoxFit.cover,
            opacity: 0.6,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Coffee Shop",
              style: GoogleFonts.laBelleAurore(
                  fontSize: 60,
                  color: txtColor,
                  fontWeight: FontWeight.w700,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: shdwColor,
                    )
                  ]),
            ),
            Column(
              children: [
                Text(
                  "Feeling Lox? Take a Sip of Coffee",
                  style: TextStyle(
                      color: txtColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5),
                ),
                SizedBox(
                  height: 20,
                ),
                Material(
                  color: backColor,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                      child: Text("Get Start!",
                          style: TextStyle(
                              color: txtColor,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.7)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
