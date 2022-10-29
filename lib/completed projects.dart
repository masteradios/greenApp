import 'dart:io';
import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'reusable.dart';
class CompletedProjects extends StatelessWidget {
List<Image>images=[
  Image(image: AssetImage('asssets/aditya.jpg')),
  Image(image: AssetImage('asssets/plant.jpg')),
  Image(image: AssetImage('asssets/plant2.jpg')),
];

  @override
  Widget build(BuildContext context) {
    // alertmethod()
    // {
    //   Alert(
    //       context:context,
    //       title: 'Donation Successful!!',
    //       image: Image.asset('asssets/check.png'),
    //       buttons: [
    //         DialogButton(child: Text('Go Back'), onPressed: (){Navigator.pop(context);})
    //       ]
    //   ).show();
    //
    // }
    // alertmethodvolunteer()
    // {
    //   Alert(
    //       context:context,
    //       title: 'Volunteering Succsesful!!',
    //       image: Image.asset('asssets/check.png'),
    //       buttons: [
    //         DialogButton(child: Text('Go Back'), onPressed: (){Navigator.pop(context);})
    //       ]
    //   ).show();
    //
    // }
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.greenAccent,
        title: Text(
          'Planterr',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ReusableCard('Ashwa Green', AssetImage('asssets/plant.jpg'), 'Make Mulund Green!!', '/ashwa'),
          ),

          CompleteProjectInfo('Ashwa Green','Mulund','1) Planted 50 Arjuna Saplings\n\n2) Maintained a team for preserving the  planted saplings'),
          IconButton(onPressed: (){}, icon: Icon(Icons.photo,size: 50.0,))
        ],
      ),
    );
  }
}
class Impact extends StatelessWidget {
  Impact(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Align(
            alignment: Alignment.center,
            child: Text(title,style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,

            ),
            ),
          ),
        ),
      ),


    );
  }
}

class CompleteProjectInfo extends StatelessWidget {
  CompleteProjectInfo(this.title,this.location,this.description);
  final String title;
  final String location;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0x80b4eb57)),
      child: Column(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text('Project Name: '+title,style: TextStyle(
                  fontSize: 30.0,fontWeight: FontWeight.bold,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Project Location: '+location,style: TextStyle(
                    fontSize: 30.0,fontWeight: FontWeight.bold,
                  ),),
                ),
              ),//location
              Padding(
                padding: const EdgeInsets.only( top: 8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Project Description ',style: TextStyle(
                    fontSize: 28.0,fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),//description
              Padding(
                padding: const EdgeInsets.all( 9.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(description,style: TextStyle(
                    fontSize: 20.0,fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),


            ],
          ),//projectName

        ],
      ),



    );
  }
}



// GridView(
// gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
// maxCrossAxisExtent: 400,
// crossAxisSpacing: 10.0,
// mainAxisSpacing: 10.0,
// ),
// children: [
// ReusableCard(
// 'Ashwa Green',
// AssetImage('asssets/plant.jpg'),
// 'Make Mulund Green!!',
// '/ashwa'
// ),
// ProjectInfo('Ashwa Group'),
//
// ],
// )
