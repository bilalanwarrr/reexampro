import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:re_exam_pro/constants/app_images.dart';
import 'package:re_exam_pro/constants/color_constants.dart';
import 'package:re_exam_pro/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:re_exam_pro/screens/forgetPassword.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
  
}

class _loginScreenState extends State<loginScreen> {

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  bool value = false;
  bool loading = false;
  
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    

    return Scaffold(
       resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: SizedBox(
              width: width*0.5,
              height: height*0.3,
              child: Image.asset(AppImages.logo)),
          ),
          Center(
            child: Text("Welcome Back!",
            style: GoogleFonts.manrope(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor
            ),),
          ),
          
          Center(
            child: Text("Login to continue ",
            style: GoogleFonts.manrope(
              fontSize: 15,
              
              color: AppColors.textColor
            ),),
          ),
          SizedBox(height: height*0.05,),
          customTextField(controller: _emailController, hintText: 'Email'),
          SizedBox(height: height*0.02,),
          customTextField(controller: _passwordController, hintText: 'Password'),


          SizedBox(height: height*0.02,),
          Padding(
            padding:  EdgeInsets.fromLTRB(width*0.1, 0, width*0.1, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                      
                      checkColor: Colors.black,
                      activeColor: AppColors.textColor,
                      
                              
                              value: this.value,
                              onChanged: (value) {
                                setState(() {
                                  this.value = value!;
                                });
                              },
                            ), //Checkbox
                    Text(
                          "Remember Me",
                              style: GoogleFonts.dmSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.textColor, 
                        ),
                        ),
                  ],
                ),
                
                Text(
                      "Forget Password ?",
                          style: GoogleFonts.dmSans(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: AppColors.textColor, 
                    ),
                    ),
                    
              ],
            ),
          ),
          SizedBox(height: height*0.03,),
          GestureDetector(
            onTap: signIn,
            child: Container(
              height: 54,
              width: width*0.80,
              decoration: BoxDecoration(
                color: AppColors.btnColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: loading ? SizedBox(height: 15, width:15, 
                child: CircularProgressIndicator(color: AppColors.textColor,)) :  Text(

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
          SizedBox(height: height*0.05,),
          Padding(
            padding:  EdgeInsets.fromLTRB(width*0.1, 0, width*0.1, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 1,
                  width: width*0.20,
                  decoration: BoxDecoration(
                    color: AppColors.textFieldPlaceholder,
                    
                  ),
                  
                ),
                Text(
                      "Or continue with",
                      style: GoogleFonts.dmSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textColor, 
                      ),
                    ),
                    Container(
                      height: 1,
                      width: width*0.25,
                      decoration: BoxDecoration(
                        color: AppColors.textFieldPlaceholder,
                        
                      ),
                      
                    ),

                   
              ],
            ),
          ),
          SizedBox(height: height*0.02,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 54,
                width: width*0.2,
                decoration: BoxDecoration(
                  color: AppColors.textColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Image.asset(AppImages.googleicon),
                  ),
                ),
                SizedBox(width: width*0.02,),
                Container(
                height: 54,
                width: width*0.2,
                decoration: BoxDecoration(
                  color: AppColors.textColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Image.asset(AppImages.facebook),
                  ),
                ),
            ],
          ),
          

           SizedBox(height: height*0.05,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textFieldPlaceholder, 
              ),
              ),
              Text(
                "Sign Up",
                    style: GoogleFonts.dmSans(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.btnColor, 
              ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
  signIn () async {
    setState(() {
      loading = true;
    });
    try{
      

      final UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text,
      );

      

      _emailController.clear();
      _passwordController.clear();

       setState(() {
      loading = false;
    });

      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const forgetPasswordScreen()),
  );

      

      
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-email') {
        myToast(text: 'Invalid email');
      } else if (e.code == 'user-disabled') {
        myToast(text: 'This account is disabled');
      } else if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        myToast(text: 'Incorrect email or password');
      }

      setState(() {
      loading = false;
    });
    }
  }
}