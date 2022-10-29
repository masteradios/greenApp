import 'package:flutter/material.dart';
import 'package:greenapp/ashwa.dart';
import 'package:greenapp/calendar.dart';
import 'package:greenapp/lions.dart';
import 'package:greenapp/messages.dart';
import 'home.dart';
import 'aboutpage.dart';
import 'account.dart';
import 'messages.dart';
import 'calendar.dart';
import 'loginpage.dart';
import 'lions.dart';
import 'completed projects.dart';
import 'frontpage.dart';
void main() {
  runApp( Green());
}
class Green extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LoginPage(),
      routes: {
      '/home':(context)=>Home(),
      '/about':(context)=>About(),
        '/account':(context)=>AccountPage(),
        '/messages':(context)=>Messages(),
        '/calendar':(context)=>Calendar(),
        '/login':(context)=>LoginPage(),
        '/ashwa':(context)=>Ashwa(),
        '/lions':(context)=>Lions(),
        '/notfound':(context)=>Messages(),
        '/complete':(context)=>CompletedProjects(),
        '/personal':(context)=>PersonalData(),
      },


    );
  }
}


