import 'dart:io';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'reusable.dart';
import 'constants.dart';
import 'loginpage.dart';
class Home extends StatefulWidget {

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  SearchBar searchBar=SearchBar();
  HomeState();

  alertmethod()
  {
    Alert(
      context:context,
      title: 'Are you sure you want to exit ??',
      buttons: [
        DialogButton(child: Text('Yes'), onPressed:(){exit(0);}),
        DialogButton(child: Text('No'), onPressed:(){Navigator.pop(context);})

      ]
    ).show();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.white,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('asssets/aditya.jpeg'),
                  ),
                  SizedBox(width: 10.0,),
                  Text('Welcome,User!',
                    style:
                    TextStyle
                      (
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                    ),),
                ],
              ),

            ),
            SizedBox(height: 10.0,),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      DrawerContent('Account', Icons.account_circle, '/account'),
                      DrawerContent('About Us', Icons.info, '/about'),
                    ],
                  ),
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomLeft,
              child:   GestureDetector(
                  onTap: ()
                  {
                    alertmethod();
                  },
                  child: Icon(Icons.settings_power,size: 50.0,),

              ),

            )


          ],
        ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.greenAccent,
        title: Text(
          'Planterr',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: HomeIcon(Icons.home,'/home'),label: 'Home'),
          BottomNavigationBarItem(icon: HomeIcon(Icons.message,'/messages'),label: 'Messages'),
          BottomNavigationBarItem(icon:HomeIcon(Icons.calendar_month_rounded,'/calendar'),label: 'Calendar' )


        ],
      ),
      body: SafeArea(
        child:
              Column(children: [
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  onTap: () {

                  },
                  decoration: searchBar.searchbar('Search for projects'),
                ),
              ),
                Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 100.0,
                        child: Image(image: AssetImage('asssets/ves.jpg'),fit: BoxFit.fill,)),
                    Center(child: Text('V.E.S initiative: ICT to improve Life On Land', style: TextStyle(
                      fontSize: 15.0,fontWeight: FontWeight.w900,
                    ))),
                  ],
                )),
                SizedBox(
                    height: MediaQuery.of(context).size.height/2,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(

                        children: [
                          Align(
                              alignment:Alignment.bottomLeft,
                              child: Text('Current Projects',style: TextStyle(color: Colors.greenAccent,fontSize: 30.0,fontWeight: FontWeight.bold),)),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                semanticChildCount: 3,
                                children: [
                                  ReusableCard('Ashwa Green', AssetImage('asssets/plant.jpg'), 'Make Mulund Green!!', '/ashwa'),
                                  SizedBox(width: 5),
                                  ReusableCard('Leone Club', AssetImage('asssets/plant2.jpg'), 'Make Kalyan Green!!', '/lions',),
                                  SizedBox(width: 5),
                                  ReusableCard('Pragati Group', AssetImage('asssets/plant3.jpg'), 'Make Delhi Green', '/ashwa'),
                                  SizedBox(width: 5),
                                  //

                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3.0),
                            child: Align(
                                alignment:Alignment.bottomLeft,
                                child: Text('Completed Projects',style: TextStyle(color: Colors.greenAccent,fontSize: 30.0,fontWeight: FontWeight.bold),)),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                semanticChildCount: 3,
                                children: [
                                  ReusableCard('Rotery Club', AssetImage('asssets/plant4.jpg'), 'Noida Project', '/complete'),
                                  SizedBox(width: 5),
                                  ReusableCard('St.Xavier\'s Club', AssetImage('asssets/plant5.jpg'), ' Raipur Project', '/lions',),
                                  SizedBox(width: 5),
                                  ReusableCard('Newton Group', AssetImage('asssets/plant6.jpg'), 'Amravati Project', '/ashwa'),
                                  SizedBox(width: 5),
                                  ReusableCard('Drishti Group', AssetImage('asssets/plant7.jpg'), 'Nagpur Project', '/ashwa'),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),],),


        ),

    );
  }
}

class DrawerContent extends StatelessWidget {
  DrawerContent(this.title,this.icon,this.route);
  final String title;
  final IconData icon;
  final String route;
  @override
  Widget build(BuildContext context) {
    return     Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(title,style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
        ),
        SizedBox(width: 10.0,),
        GestureDetector(onTap: ()
        {
          Navigator.pushNamed(context, route);
        },
          child: Icon(icon,size: 30.0,),

        ),

      ],
    );
  }
}

