import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:re_exam_pro/screens/bottomBar.dart';
import 'package:re_exam_pro/screens/categoryScreen.dart';
import 'package:re_exam_pro/screens/forgetPassword.dart';
import 'package:re_exam_pro/screens/home.dart';
import 'package:re_exam_pro/screens/login.dart';
import 'package:re_exam_pro/screens/notifications.dart';
import 'package:re_exam_pro/screens/quiz.dart';
import 'package:re_exam_pro/screens/review.dart';
import 'package:re_exam_pro/screens/settings.dart';
import 'package:re_exam_pro/screens/signup.dart';
import 'package:re_exam_pro/screens/stats.dart';
import 'package:re_exam_pro/screens/flashcard.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const loginScreen(),
    );
  }
}
