import 'package:flutter/material.dart';
import 'package:gym_management_system/screens/Member_Management/newMember_screen.dart';
import 'package:gym_management_system/screens/chat_screen.dart';
import 'package:gym_management_system/screens/login_screen.dart';
import 'package:gym_management_system/screens/main_screen.dart';
import 'package:gym_management_system/screens/registration_screen.dart';
import 'package:gym_management_system/screens/welcome_screen.dart';

void main() {
  runApp( GMS());
}

class GMS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //home: ChatScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id:(context)=>WelcomeScreen(),
        LoginScreen.id:(context)=> LoginScreen(),
        RegistrationScreen.id:(context)=>RegistrationScreen(),
        ChatScreen.id:(context)=>ChatScreen(),
        MainScreen.id:(context)=>MainScreen(),
        newMemberScreen.id:(context)=>newMemberScreen(),
      },
    );
  }
}