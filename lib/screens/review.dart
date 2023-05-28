import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color_constants.dart';

class reviewScreen extends StatefulWidget {
  const reviewScreen({super.key});

  @override
  State<reviewScreen> createState() => _reviewScreenState();
}

class _reviewScreenState extends State<reviewScreen> {

    bool selected = true;


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
                
                title: Text("Review",
                style: GoogleFonts.manrope(
                  color: AppColors.textColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),),
                elevation: 0,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            
            children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = true;
                    });
                  },
                  child: Container(
                    
                    width: width*0.45,
                    height: height*0.06,
                    decoration: BoxDecoration(
                      color: selected == true ? AppColors.btnColor : AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Quizzes", style: GoogleFonts.manrope(
                          color: AppColors.textColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected = false;
                    });
                  },
      
                  child: Container(
                    transform: Matrix4.translationValues(-30, 0, 0.0),
                    width: width*0.45,
                    height: height*0.06,
                    decoration: BoxDecoration(
                      color: selected == false ? AppColors.btnColor : AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Questions", style: GoogleFonts.manrope(
                          color: AppColors.textColor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                
              ],
            ),
            SizedBox(height: height*0.3,),
            Text(
                  "No Finished Tests Yet", style: GoogleFonts.manrope(
                    fontSize: 20,
                    color: AppColors.textColor
                  ),
                ),
          ]),
        ),
      ),
    );
    
  }
}