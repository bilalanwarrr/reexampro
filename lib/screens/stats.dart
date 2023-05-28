import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:re_exam_pro/constants/color_constants.dart';

class statsScreen extends StatefulWidget {
  const statsScreen({super.key});

  @override
  State<statsScreen> createState() => _statsScreenState();
}

class _statsScreenState extends State<statsScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.1, vertical: height * 0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Stats",
                style: GoogleFonts.manrope(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor,
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.08,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: AppColors.textColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Current Pass Rate",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "0%",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: AppColors.btnColor,
                              ),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        height: 1,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height*0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                           Expanded(
                    child: Column(
                      children: [
                        Text(
                                    "Tests Taken",
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                  Text(
                              "0%",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: AppColors.btnColor,
                              ),
                            ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                                    "Correct Answers",
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                  Text(
                              "0%",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: AppColors.btnColor,
                              ),
                            ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                                    "Questions Taken",
                                    style: GoogleFonts.manrope(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                  Text(
                              "0%",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: AppColors.btnColor,
                              ),
                            ),
                      ],
                    ),
                  ),
      
                  
                            
                ],
              ),
              SizedBox(height: height*0.1,),
              Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Test Taken",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "0",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                          SizedBox(height: height*0.02,),
                          Container(
                            height: 1,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Longest Streak",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "0 Days",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                          SizedBox(height: height*0.02,),
                          Container(
                            height: 1,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Answered Questions",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "0",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                          SizedBox(height: height*0.02,),
                          Container(
                            height: 1,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),SizedBox(height: 20,),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Correct Questions",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "0",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                          SizedBox(height: height*0.02,),
                          Container(
                            height: 1,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Correct Answers",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "0",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                          SizedBox(height: height*0.02,),
                          Container(
                            height: 1,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "CompTIA CASP+",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "0%",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                          ]),
                          SizedBox(height: height*0.02,),
                          Container(
                            height: 1,
                            width: width * 0.9,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                          Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            
                            Text(
                              "0%",
                              style: GoogleFonts.manrope(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: AppColors.btnColor,
                              ),
                            ),
                          ]),
                         
            ],
          ),
        ),
      ),
    );
  }
}
