import 'package:flutter/material.dart';
import 'constants.dart';
class LoginPage extends StatelessWidget {
SearchBar searchBar=SearchBar();
final myController=TextEditingController();
int i=0;
  @override
  void dispose()
  {
    myController.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Login to Continue',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize:25.0,
                        ),),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    controller: myController,
                                    onTap: () {

                                    },
                                    decoration: InputDecoration(
                                      fillColor: Color(0x40524f4f),
                                      filled: true,
                                      labelText: 'UserName',
                                      labelStyle: TextStyle(fontSize: 15.0,color: Colors.black,fontWeight: FontWeight.bold),
                                      hintText: 'Enter Your Password',
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                        borderSide: BorderSide(width: 2, color: Color(0x40524f4f)),
                                      ),
                                      focusedBorder: (OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                        borderSide: BorderSide(width: 2, color: Color(0x40524f4f)),
                                      )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    obscureText:true,
                                    decoration: InputDecoration(
                                      fillColor: Color(0x40524f4f),
                                      filled: true,
                                      labelText: 'Password',
                                      labelStyle: TextStyle(fontSize: 15.0,color: Colors.black,fontWeight: FontWeight.bold),
                                      hintText: 'Enter Your Password',
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                        borderSide: BorderSide(width: 2, color: Color(0x40524f4f)),
                                      ),
                                      focusedBorder: (OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20.0),
                                        borderSide: BorderSide(width: 2, color: Color(0x40524f4f)),
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            ),


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: LoginBar('Login', '/home'),
                        ),
                      ],
                    ),
                  ),
                ),




          ),
        ),
      ),
    );
  }
}
class LoginBar extends StatelessWidget {
  LoginBar(this.title,this.routename);
  final String title;
  final String routename;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.pushReplacementNamed(context, routename);

      },
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width/3,),
                    Text(title,style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,

                  ),),


              ],
            ),
          ),


        ),
      ),
    );
  }
}



