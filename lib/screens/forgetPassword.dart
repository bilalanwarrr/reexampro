import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:re_exam_pro/constants/color_constants.dart';
import 'package:re_exam_pro/constants/constants.dart';

class forgetPasswordScreen extends StatefulWidget {
  const forgetPasswordScreen({super.key});

  @override
  State<forgetPasswordScreen> createState() => _forgetPasswordScreenState();
}

class _forgetPasswordScreenState extends State<forgetPasswordScreen> {
  TextEditingController _emailController = new TextEditingController();
  bool loading = false;

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
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.07,
                ),
                Text(
                  "Forget Password",
                  style: GoogleFonts.manrope(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textColor),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Row(
              children: [
                SizedBox(
                  width: width * 0.07,
                ),
                Center(
                  child: Text(
                    "Enter the email address associated with your account",
                    style: GoogleFonts.manrope(
                        fontSize: 13, color: AppColors.textColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            customTextField(controller: _emailController, hintText: 'Email', obscureText: false,),
            SizedBox(
              height: height * 0.05,
            ),
            GestureDetector(
              onTap: forgetPassword,
              child: Container(
                height: 54,
                width: width * 0.80,
                decoration: BoxDecoration(
                  color: AppColors.btnColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: loading
                      ? SizedBox(
                          width: 15,
                          height: 15,
                          child: CircularProgressIndicator(
                            color: AppColors.textColor,
                          ))
                      : Text(
                          "Recover Password",
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
    );
  }

  forgetPassword() async {
    setState(() {
      loading = true;
    });

    FirebaseAuth.instance
        .sendPasswordResetEmail(email: _emailController.text)
        .then((value) {
      setState(() {
        loading = false;
      });
      myToast(text: "Password Reset Mail Sent");
      _emailController.clear();
    }).catchError((e) {
      myToast(text: "Invalid Email");

      setState(() {
        loading = false;
      });
    });
  }
}
