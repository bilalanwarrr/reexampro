import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:re_exam_pro/constants/app_images.dart';
import 'package:re_exam_pro/constants/color_constants.dart';
import 'package:re_exam_pro/constants/constants.dart';
import 'package:re_exam_pro/screens/login.dart';

class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
  
}

class _signupScreenState extends State<signupScreen> {

  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _confirmpasswordController = new TextEditingController();
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
          SizedBox(height: height*0.1,),
         
          Center(
            child: Text("Create Account",
            style: GoogleFonts.manrope(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor
            ),),
          ),
          SizedBox(height: height*0.01,),
          Center(
            child: Text("Please provide following",
            style: GoogleFonts.manrope(
              fontSize: 15,
              
              color: AppColors.textColor
            ),),
          ),
          Center(
            child: Text("details for your new account",
            style: GoogleFonts.manrope(
              fontSize: 15,
              
              color: AppColors.textColor
            ),),
          ),
          SizedBox(height: height*0.05,),
          customTextField(controller: _nameController, hintText: 'Full Name'),
          SizedBox(height: height*0.02,),
          customTextField(controller: _emailController, hintText: 'Email'),
          SizedBox(height: height*0.02,),
          customTextField(controller: _passwordController, hintText: 'Password'),
          SizedBox(height: height*0.02,),
          customTextField(controller: _confirmpasswordController, hintText: 'Confirm Password'),


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
                          "I have read and agree to the ",
                              style: GoogleFonts.dmSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.textColor, 
                        ),
                        ),
                        Text(
                          "terms and conditions",
                              style: GoogleFonts.dmSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColors.btnColor, 
                        ),
                        ),
                  ],
                ),
                
                
                    
              ],
            ),
          ),
          SizedBox(height: height*0.03,),
          GestureDetector(
            onTap: signUp,
            child: Container(
              height: 54,
              width: width*0.80,
              decoration: BoxDecoration(
                color: AppColors.btnColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: loading ? SizedBox(width: 15, height: 15, 
                child: CircularProgressIndicator(color: AppColors.textColor,)) : Text(
                  "Sign Up",
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
                "Already have an account?",
                    style: GoogleFonts.dmSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textFieldPlaceholder, 
              ),
              ),
              Text(
                "Login",
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

  signUp() async{
    setState(() {
      loading = true;
    });
  try{
    if (_emailController.text.length==0 || _passwordController.text.length==0 || _nameController.text.length==0 || _confirmpasswordController.text.length==0 ){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: const Text('Please fill all fields'),
    
  ));  
    }
    else if(_passwordController.text != _confirmpasswordController.text ){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: const Text('Password and Confirm Password does not match'),
    
  ));  

    }
    else{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _emailController.text, password: _passwordController.text)
    .then((value) => {
      print("Registered Successfully."),
      print(value.user!.uid.toString()),
      _emailController.clear(),
      _nameController.clear(),
      _passwordController.clear(),
      _confirmpasswordController.clear(),

      setState(() {
      loading = false;
    }),

       Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const loginScreen()),
  ),
    });
    
    }
  }
  on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        myToast(text: 'Email already in use');
      } else if (e.code == 'invalid-email') {
        myToast(text: 'Invalid email');
      } else if (e.code == 'operation-not-allowed') {
        myToast(text: 'Operation not allowed');
      } else if (e.code == 'weak-password') {
        myToast(text: 'Weak Password');
      }
      setState(() {
      loading = false;
    });
  }
  }
  
}