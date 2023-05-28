import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:re_exam_pro/constants/color_constants.dart';

class notificationScreen extends StatefulWidget {
  const notificationScreen({super.key});

  @override
  State<notificationScreen> createState() => _notificationScreenState();
}



class _notificationScreenState extends State<notificationScreen> {
  final TextEditingController _searchController = TextEditingController();
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
                title: Text(
                      "Notifcations",
                      style: GoogleFonts.dmSans(
                        fontSize: 32,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                leading: GestureDetector(
                  onTap: () => {
                    Navigator.pop(context)
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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left:20),
            child: Column(children: [
              
              
              Row(
                children: [
                  Text(
                          "Today",
                          style: GoogleFonts.dmSans(
                            fontSize: 18,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                ],
              ),
              SizedBox(height: height*0.02,),
              Padding(
      
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 66,
                  width: width,
                  decoration: BoxDecoration(
                    color: AppColors.btnColor,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                
                  
                  
                  children: [
                    SizedBox(width: width*0.05,),
                    Container(
                      height: 27,
                      width: 27,
                     
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius. circular(25),
                        
                      ),
                      child: Icon(Icons.notifications_outlined, color: AppColors.btnColor,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        width: width*0.7,
                        child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: GoogleFonts.dmSans(
                                
                                fontSize: 14,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ),
                    ),
                  ],
                  
      
                ),
                ),
              ),
              SizedBox(height: height*0.02,),
              Padding(
      
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 66,
                  width: width,
                  decoration: BoxDecoration(
                    color: AppColors.btnColor,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                
                  
                  
                  children: [
                    SizedBox(width: width*0.05,),
                    Container(
                      height: 27,
                      width: 27,
                     
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius. circular(25),
                        
                      ),
                      child: Icon(Icons.notifications_outlined, color: AppColors.btnColor,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        width: width*0.7,
                        child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: GoogleFonts.dmSans(
                                
                                fontSize: 14,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ),
                    ),
                  ],
                  
      
                ),
                ),
              ),
              SizedBox(height: height*0.02,),
              Padding(
      
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 66,
                  width: width,
                  decoration: BoxDecoration(
                    color: AppColors.btnColor,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                
                  
                  
                  children: [
                    SizedBox(width: width*0.05,),
                    Container(
                      height: 27,
                      width: 27,
                     
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius. circular(25),
                        
                      ),
                      child: Icon(Icons.notifications_outlined, color: AppColors.btnColor,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        width: width*0.7,
                        child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: GoogleFonts.dmSans(
                                
                                fontSize: 14,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ),
                    ),
                  ],
                  
      
                ),
                ),
              ),
              SizedBox(height: height*0.02,),
              Row(
                children: [
                  Text(
                          "Yesterday",
                          style: GoogleFonts.dmSans(
                            fontSize: 18,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                ],
              ),
              SizedBox(height: height*0.02,),
              Padding(
      
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 66,
                  width: width,
                  decoration: BoxDecoration(
                    color: AppColors.btnColor,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                
                  
                  
                  children: [
                    SizedBox(width: width*0.05,),
                    Container(
                      height: 27,
                      width: 27,
                     
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius. circular(25),
                        
                      ),
                      child: Icon(Icons.notifications_outlined, color: AppColors.btnColor,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        width: width*0.7,
                        child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: GoogleFonts.dmSans(
                                
                                fontSize: 14,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ),
                    ),
                  ],
                  
      
                ),
                ),
              ),
              SizedBox(height: height*0.02,),
              Padding(
      
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 66,
                  width: width,
                  decoration: BoxDecoration(
                    color: AppColors.btnColor,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                
                  
                  
                  children: [
                    SizedBox(width: width*0.05,),
                    Container(
                      height: 27,
                      width: 27,
                     
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius. circular(25),
                        
                      ),
                      child: Icon(Icons.notifications_outlined, color: AppColors.btnColor,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        width: width*0.7,
                        child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: GoogleFonts.dmSans(
                                
                                fontSize: 14,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ),
                    ),
                  ],
                  
      
                ),
                ),
              ),
              SizedBox(height: height*0.02,),
              Padding(
      
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 66,
                  width: width,
                  decoration: BoxDecoration(
                    color: AppColors.btnColor,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                
                  
                  
                  children: [
                    SizedBox(width: width*0.05,),
                    Container(
                      height: 27,
                      width: 27,
                     
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius. circular(25),
                        
                      ),
                      child: Icon(Icons.notifications_outlined, color: AppColors.btnColor,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: SizedBox(
                        width: width*0.7,
                        child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                              style: GoogleFonts.dmSans(
                                
                                fontSize: 14,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ),
                    ),
                  ],
                  
      
                ),
                ),
              ),
              SizedBox(height: height*0.05,)
              
              
              
              
              
            ]),
          ),
        ),
      ),
    );
  }
}



  