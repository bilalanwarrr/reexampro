import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color_constants.dart';

class quizScreen extends StatefulWidget {
  const quizScreen({super.key});

  @override
  State<quizScreen> createState() => _quizScreenState();
}

class _quizScreenState extends State<quizScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primaryColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: AppBar(
                backgroundColor: AppColors.primaryColor,
                title: Text(
                  "My Quiz",
                  style: GoogleFonts.manrope(
                      color: AppColors.textColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                leading:  GestureDetector(
                  onTap: () => {
                    Navigator.pop(context),
                  },
                  child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.textColor,
                    ),
                ),
                
        ),
      )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
           padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              HorizontalProgressIndicator(),
              SizedBox(height: height*0.05,),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "PREDICT THE TOP LOSER (for tomorrow) across these indices",
                  style:
                      GoogleFonts.manrope(fontSize: 22, color: AppColors.textColor),
                ),
              ),SizedBox(height: height*0.05,),
              Container(
                height: height*0.07,
                width: width*0.8,
                decoration: BoxDecoration(
                  color: AppColors.textColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(25)),
                            child: Center(
                              child: Text("A",style: GoogleFonts.manrope(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                            )
                          ),
                  ),
                  Text("NIFTY50  ",style: GoogleFonts.manrope(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("₹ 17,356,  ",style: GoogleFonts.manrope(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                               Text("-0.31%",style: GoogleFonts.manrope(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),)
                              
                ]),
                
              ),
              SizedBox(height: height*0.03,),
              Container(
                height: height*0.07,
                width: width*0.8,
                decoration: BoxDecoration(
                  color: AppColors.textColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(25)),
                            child: Center(
                              child: Text("A",style: GoogleFonts.manrope(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                            )
                          ),
                  ),
                  Text("NIFTY50  ",style: GoogleFonts.manrope(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("₹ 17,356,  ",style: GoogleFonts.manrope(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                               Text("-0.31%",style: GoogleFonts.manrope(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),)
                              
                ]),
                
              ),
              SizedBox(height: height*0.03,),
              Container(
                height: height*0.07,
                width: width*0.8,
                decoration: BoxDecoration(
                  color: AppColors.textColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(25)),
                            child: Center(
                              child: Text("A",style: GoogleFonts.manrope(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                            )
                          ),
                  ),
                  Text("NIFTY50  ",style: GoogleFonts.manrope(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("₹ 17,356,  ",style: GoogleFonts.manrope(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                               Text("-0.31%",style: GoogleFonts.manrope(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),)
                              
                ]),
                
              ),
              SizedBox(height: height*0.03,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    GestureDetector(
                        
                    child: Container(
                      height: 54,
                      width: width*0.4,
                      decoration: BoxDecoration(
                        color: AppColors.btnColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child:  Text(
              
                          "Prev",
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor, 
                          ),
                        ),
                      ),
                    ),
                        ),
                        SizedBox(width: 20,),
                        GestureDetector(
                        
                    child: Container(
                      height: 54,
                      width: width*0.4,
                      decoration: BoxDecoration(
                        color: AppColors.btnColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child:  Text(
              
                          "Next",
                          style: GoogleFonts.dmSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: AppColors.textColor, 
                          ),
                        ),
                      ),
                    ),
                        ),
                  ],
                ),
              ),
            
              
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalProgressIndicator extends StatefulWidget {
  @override
  HorizontalProgressIndicatorState createState() =>
      new HorizontalProgressIndicatorState();
}

class HorizontalProgressIndicatorState
    extends State<HorizontalProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation animation;

  double beginAnim = 0.0;
  double endAnim = 1.0;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 5), vsync: this);
    animation = Tween(begin: beginAnim, end: endAnim).animate(controller)
      ..addListener(() {
        setState(() {
          // Change here any Animation object value.
        });
      });
  }

  @override
  void dispose() {
    controller.stop();
    super.dispose();
  }

  startProgress() {
    controller.forward();
  }

  stopProgress() {
    controller.stop();
  }

  resetProgress() {
    controller.reset();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Center(
        child: Column(children: [
      Container(
          height: height * 0.06,
          padding: EdgeInsets.fromLTRB(20,20,20,20),
          child: LinearProgressIndicator(
            value: 0.1,
            backgroundColor: Colors.white,
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          )),
    ]));
  }
}
