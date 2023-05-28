import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:re_exam_pro/constants/color_constants.dart';

class flashcardScreen extends StatefulWidget {
  const flashcardScreen({super.key});

  @override
  State<flashcardScreen> createState() => _flashcardScreenState();
}

class _flashcardScreenState extends State<flashcardScreen> {
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: AppBar(
                backgroundColor: AppColors.primaryColor,
                leading: GestureDetector(
                  onTap: () => {
                    Navigator.pop(context),
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.textColor,
                  ),
                ),
                elevation: 0,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(    
          children: [
            SizedBox(height: height*0.1,),
            Stack(
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
                        ],
                      ),
                    ),
                  ),
                ),
        
               
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}