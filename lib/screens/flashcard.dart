import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _toggler = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: height*0.2,),
          
          Center(
            child: FlipCard(
              toggler: _toggler,
              frontCard: Stack(
              children: [
                 Center(
                  child: Container(
                    height: height*0.4,
                    width: width*0.80,
                    decoration: BoxDecoration(
                      color: AppColors.textColor,
                    ),
                    
                  ),
                ),
                Center(
                  child: RotationTransition(
                    turns: new AlwaysStoppedAnimation(-15 / 360),
                    child: Container(
                      height: height*0.4,
                      width: width*0.80,
                      decoration: BoxDecoration(
                        color: AppColors.textColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RotationTransition(
                            turns: new AlwaysStoppedAnimation(15 / 360),
                            child: Text("What is ", style: GoogleFonts.manrope(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          RotationTransition(
                            turns: new AlwaysStoppedAnimation(15 / 360),
                            child: Text("chromatin?", style: GoogleFonts.manrope(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          SizedBox(height: 20,),
                           GestureDetector(
                    
                    child: RotationTransition(
                      turns: new AlwaysStoppedAnimation(15 / 360),
                      child: GestureDetector(
                        onTap: _onFlipCardPressed,
                        child: Container(
                          height: 54,
                          width: width*0.40,
                          decoration: BoxDecoration(
                            color: AppColors.btnColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child:  Text(
                                      
                              "Spin",
                              style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.textColor, 
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                                ),
                        ],
                      ),
                    ),
                  ),
                ),
        
               
              ],
            ),
              backCard: Stack(
              children: [
                 Center(
                  child: Container(
                    height: height*0.4,
                    width: width*0.80,
                    decoration: BoxDecoration(
                      color: AppColors.textColor,
                    ),
                    
                  ),
                ),
                Center(
                  child: RotationTransition(
                    turns: new AlwaysStoppedAnimation(-15 / 360),
                    child: Container(
                      height: height*0.4,
                      width: width*0.80,
                      decoration: BoxDecoration(
                        color: AppColors.textColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RotationTransition(
                            turns: new AlwaysStoppedAnimation(15 / 360),
                            child: Text("What is ", style: GoogleFonts.manrope(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          RotationTransition(
                            turns: new AlwaysStoppedAnimation(15 / 360),
                            child: Text("Flipcard?", style: GoogleFonts.manrope(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          SizedBox(height: 20,),
                           GestureDetector(
                    
                    child: RotationTransition(
                      turns: new AlwaysStoppedAnimation(15 / 360),
                      child: GestureDetector(
                        onTap: _onFlipCardPressed,
                        child: Container(
                          height: 54,
                          width: width*0.40,
                          decoration: BoxDecoration(
                            color: AppColors.btnColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child:  Text(
                                      
                              "Spin",
                              style: GoogleFonts.dmSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: AppColors.textColor, 
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                                ),
                        ],
                      ),
                    ),
                  ),
                ),
        
               
              ],
            ),
            ),
            
          ),
          
        ],
      ),
      
      
    );
  }

  void _onFlipCardPressed() {
    setState(() {
      _toggler = !_toggler;
    });
  }
}

class AppCard extends StatelessWidget {
  final String title;

  const AppCard({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.deepPurple[400],
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 40.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class FlipCard extends StatelessWidget {
  final bool toggler;
  final Widget frontCard;
  final Widget backCard;

  const FlipCard({
    required this.toggler,
    required this.backCard,
    required this.frontCard,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 800),
        transitionBuilder: _transitionBuilder,
        layoutBuilder: (widget, list) => Stack(children: [widget!, ...list]),
        switchInCurve: Curves.ease,
        switchOutCurve: Curves.ease.flipped,
        child: toggler
            ? SizedBox(key: const ValueKey('front'), child: frontCard)
            : SizedBox(key: const ValueKey('back'), child: backCard),
      ),
    );
  }

  Widget _transitionBuilder(Widget widget, Animation<double> animation) {
    final rotateAnimation = Tween(begin: pi, end: 0.0).animate(animation);
    return AnimatedBuilder(
      animation: rotateAnimation,
      child: widget,
      builder: (context, widget) {
        final isFront = ValueKey(toggler) == widget!.key;
        final rotationY = isFront ? rotateAnimation.value : min(rotateAnimation.value, pi * 0.5);
        return Transform(
          transform: Matrix4.rotationY(rotationY)..setEntry(3, 0, 0),
          alignment: Alignment.center,
          child: widget,
        );
      },
    );
  }
}