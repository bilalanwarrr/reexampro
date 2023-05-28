import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:re_exam_pro/constants/app_images.dart';
import 'package:re_exam_pro/constants/color_constants.dart';
import 'package:re_exam_pro/screens/flashcard.dart';
import 'package:re_exam_pro/screens/notifications.dart';
import 'package:re_exam_pro/screens/quiz.dart';

class settingsScreen extends StatefulWidget {
  const settingsScreen({super.key});

  @override
  State<settingsScreen> createState() => _settingsScreenState();
}

class _settingsScreenState extends State<settingsScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.1,
            ),
            Center(child: Image.asset(AppImages.profileIcon)),
            Text(
              "Brian Smith",
              style: GoogleFonts.manrope(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textColor),
            ),
            Text(
              "joined since 2021",
              style:
                  GoogleFonts.manrope(fontSize: 14, color: AppColors.textColor),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            GestureDetector(
              child: Container(
                height: 54,
                width: width * 0.80,
                decoration: BoxDecoration(
                  color: AppColors.btnColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: GoogleFonts.dmSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.08,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const quizScreen())),
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.quiz,
                            color: AppColors.textColor,
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Text(
                            "My Quiz",
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.btnColor,
                    )
                  ]),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: 1,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GestureDetector(
                onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyHomePage())),
                      },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.quiz,
                            color: AppColors.textColor,
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Text(
                            "My Flash Cards",
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.btnColor,
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: 1,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.textColor,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "Privacy Policy",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.btnColor,
                    )
                  ]),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: 1,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: GestureDetector(
                onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const notificationScreen())),
                      },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: AppColors.textColor,
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Text(
                            "Notifications",
                            style: GoogleFonts.manrope(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.btnColor,
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: 1,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.notifications,
                          color: AppColors.textColor,
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Text(
                          "Logout",
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.btnColor,
                    )
                  ]),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              height: 1,
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
