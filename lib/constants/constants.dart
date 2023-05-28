import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:re_exam_pro/constants/color_constants.dart';


class customTextField extends StatelessWidget {
  customTextField({super.key, required this.controller, required this.hintText});

  TextEditingController controller;
  String hintText;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
            width: width*0.80,
            child: TextFormField(
              controller: controller,
              style: TextStyle(
                 fontSize: 14,
                      color: AppColors.textFieldPlaceholder,
                      fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.textColor,
                hintText: hintText,
                hintStyle: GoogleFonts.dmSans(
                      fontSize: 14,
                      color: AppColors.textFieldPlaceholder,
                      fontWeight: FontWeight.w500,
                    ),
                  
              contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColors.textColor),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: AppColors.textColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: AppColors.textColor),
                ),
              ),
              
            ),
          );
  }
}

myToast({required String text}) {
  Fluttertoast.showToast(
      msg: text, textColor: Colors.white, backgroundColor: AppColors.btnColor);
}

const Widget loader = Center(
  child: CircularProgressIndicator(
    color: AppColors.textColor,
  ),
);