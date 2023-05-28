import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:re_exam_pro/constants/app_images.dart';
import 'package:re_exam_pro/constants/color_constants.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: width*0.1, vertical: height*0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome", style: GoogleFonts.manrope(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textColor,
                      ),),
                      Text("Justin Pro", style: GoogleFonts.manrope(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                      ),),
                    ],
                  ),
                  Image.asset(AppImages.avatar, width: 55, height: 55,),
                ],
              ),
              SizedBox(height: height*0.02,),
              Container(
                height: 70,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                itemCount: 7,
                itemBuilder: (context, i) {
                  return Column(
                  children: [
                    Text(DateFormat('EE').format(DateTime.now().add(Duration(hours: (24 * (i + 1) )))), style: GoogleFonts.manrope(
                      fontSize: 15,
                      color: AppColors.textColor,
                    ),),
                    SizedBox(height: 10,),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: AppColors.textColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text(DateTime.now().add(Duration(hours: (24 * (i + 1) ))).day.toString(),  style: GoogleFonts.manrope(
                      fontSize: 18,
                      color: AppColors.btnColor,
                    ),)),
                  ),
                  ],
                );
                 },

                 separatorBuilder: (context, index){
                  return SizedBox(width: 12,);
                 },
              ),
              ),
              
              

              SizedBox(height: height*0.05,),
               Container(
                 height: 54,
                 width: width*0.80,
                 decoration: BoxDecoration(
                   color: AppColors.btnColor,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Center(
                   child: Text(
      
                     "Take a Test",
                     style: GoogleFonts.dmSans(
                       fontSize: 16,
                       fontWeight: FontWeight.w700,
                       color: AppColors.textColor, 
                     ),
                   ),
               ),
               ),
                SizedBox(height: height*0.03,),
               Text("Quiz Modes", style: GoogleFonts.manrope(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textColor,
                      ),),
      
                      Row(
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(0,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.textColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.cast_for_education, color: AppColors.btnColor, size: 50,),
                        SizedBox(height: 10,),
                        Text("Today's", style: GoogleFonts.manrope(fontSize: 16,
                        color: Colors.black),),
                        Text("Questions", style: GoogleFonts.manrope(fontSize: 16,
                        color: Colors.black),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(width*0.05,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.textColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.cast_for_education, color: AppColors.btnColor, size: 55,),
                        SizedBox(height: 10,),
                        Text("10 Questions", style: GoogleFonts.manrope(fontSize: 16,
                        color: Colors.black),),
                        Text("Quick Quiz", style: GoogleFonts.manrope(fontSize: 16,
                        color: Colors.black),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(0,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.textColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.cast_for_education, color: AppColors.btnColor, size: 55,),
                        SizedBox(height: 10,),
                       Text("Missed", style: GoogleFonts.manrope(fontSize: 16,
                        color: Colors.black),),
                        Text("Quiz Questions", style: GoogleFonts.manrope(fontSize: 16,
                        color: Colors.black),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(width*0.05,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.textColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.cast_for_education, color: AppColors.btnColor, size: 55,),
                        SizedBox(height: 10,),
                        Text("Saved", style: GoogleFonts.manrope(fontSize: 16,
                        color: Colors.black),),
                        Text("Quiz Questions", style: GoogleFonts.manrope(fontSize: 16,
                        color: Colors.black),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(0,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.textColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.cast_for_education, color: AppColors.btnColor, size: 55,),
                        SizedBox(height: 10,),
                       Text("Timed Quiz", style: GoogleFonts.manrope(fontSize: 16,
                        color: Colors.black),),
                        
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(width*0.05,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.textColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.cast_for_education, color: AppColors.btnColor, size: 55,),
                        SizedBox(height: 10,),
                        Text("Random", style: GoogleFonts.manrope(fontSize: 16,
                        color: Colors.black),),
                        Text("Set Quiz", style: GoogleFonts.manrope(fontSize: 16,
                        color: Colors.black),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ],
            
            
          ),
          
        ),
      ),
    );
  }
}