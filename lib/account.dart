import 'dart:io';

import 'package:flutter/material.dart';
import 'package:greenapp/reusable.dart';
import 'constants.dart';
import 'reusable.dart';
class AccountPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.greenAccent,
        title: Text(
          'Planterr',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  AccountBar('Personal Information', Icons.manage_accounts_outlined,'/personal'),
                  AccountBar('Login and Password', Icons.key, '/notfound'),
                  AccountBar('Log Out', Icons.door_front_door_outlined, '/login'),
                ],),
              ),
              
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeIcon(Icons.home,'/home'),



                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
class AccountBar extends StatelessWidget {
  AccountBar(this.title,this.icon,this.routename);
final String title;
final String routename;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.pushNamed(context, routename);

      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            textBaseline: TextBaseline.alphabetic,
            children: [
              Icon(icon,size: 40.0,),
              SizedBox(width: 5.0,),
              Text(title,style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,

              ),),

            ],
          ),
        ),


      ),
    );
  }
}

