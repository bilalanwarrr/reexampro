import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:re_exam_pro/constants/color_constants.dart';

class categoryScreen extends StatefulWidget {
  const categoryScreen({super.key});

  @override
  State<categoryScreen> createState() => _categoryScreenState();
}

class _categoryScreenState extends State<categoryScreen> {
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
                
                title: Text("Categories",
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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(width*0.1,height*0.05, 0, 0),
                  child: Text("Select Category",
                        style: GoogleFonts.manrope(
                          color: AppColors.textColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),),
                ),
              ],
            ),
      
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(width*0.1,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.btnColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(25)),
                          child: Icon(Icons.cast_for_education, color: Colors.white,),
                        ),
                        SizedBox(height: 10,),
                        Text("Ownership", style: GoogleFonts.manrope(fontSize: 16,
                        color: AppColors.textColor),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(width*0.05,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.secondaryColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(25)),
                          child: Icon(Icons.cast_for_education, color: Colors.white,),
                        ),
                        SizedBox(height: 10,),
                        Text("Georgia Real Estate", style: GoogleFonts.manrope(fontSize: 16,
                        color: AppColors.textColor),),
                        Text("Laws and rules", style: GoogleFonts.manrope(fontSize: 16,
                        color: AppColors.textColor),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
      
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(width*0.1,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.btnColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(25)),
                          child: Icon(Icons.cast_for_education, color: Colors.white,),
                        ),
                        SizedBox(height: 10,),
                        Text("Encumbrances", style: GoogleFonts.manrope(fontSize: 16,
                        color: AppColors.textColor),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(width*0.05,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.secondaryColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(25)),
                          child: Icon(Icons.cast_for_education, color: Colors.white,),
                        ),
                        SizedBox(height: 10,),
                        Text("Agency", style: GoogleFonts.manrope(fontSize: 16,
                        color: AppColors.textColor),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(width*0.1,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.btnColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(25)),
                          child: Icon(Icons.cast_for_education, color: Colors.white,),
                        ),
                        SizedBox(height: 10,),
                        Text("Contracts", style: GoogleFonts.manrope(fontSize: 16,
                        color: AppColors.textColor),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(width*0.05,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.secondaryColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(25)),
                          child: Icon(Icons.cast_for_education, color: Colors.white,),
                        ),
                        SizedBox(height: 10,),
                        Text("Appraisals", style: GoogleFonts.manrope(fontSize: 16,
                        color: AppColors.textColor),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:  EdgeInsets.fromLTRB(width*0.1,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.btnColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(25)),
                          child: Icon(Icons.cast_for_education, color: Colors.white,),
                        ),
                        SizedBox(height: 10,),
                        Text("Finance", style: GoogleFonts.manrope(fontSize: 16,
                        color: AppColors.textColor),),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(width*0.05,height*0.02, 0, 0),
                  child: Container(
                    width: width*0.35,
                    height: height*0.15,
                    decoration: BoxDecoration(color: AppColors.secondaryColor, borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(25)),
                          child: Icon(Icons.cast_for_education, color: Colors.white,),
                        ),
                        SizedBox(height: 10,),
                        Text("Transfer", style: GoogleFonts.manrope(fontSize: 16,
                        color: AppColors.textColor),),
                      ],
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