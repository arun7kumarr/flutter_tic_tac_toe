import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tic_tac_toe/colors.dart';
import 'package:flutter_tic_tac_toe/game_screen.dart';
import 'package:google_fonts/google_fonts.dart';
class  Splash_Screen extends StatefulWidget {
  const  Splash_Screen({super.key});

  @override
  State< Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State< Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return GameScreen();}));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:MainColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tic-Toc-Toe',style:GoogleFonts.coiny(textStyle: TextStyle(
                  color: Colors.white,
                  letterSpacing: 3,
                  fontSize: 30,)),
                  ),
             Text('Game!!',style:GoogleFonts.coiny(textStyle: TextStyle(
                  color: Colors.blue,
                  letterSpacing: 3,
                  fontSize: 50,)),
                  ),     
          ],
        ),)
    );
  }
}