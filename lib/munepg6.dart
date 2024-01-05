import 'package:flutter/material.dart';

import 'munepg2.dart';

class ExperiencePg extends StatefulWidget {
  const ExperiencePg({super.key});

  @override
  State<ExperiencePg> createState() => _ExperiencePgState();
}

class _ExperiencePgState extends State<ExperiencePg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left:10,top: 70,bottom: 400),
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img9.jpg"),
                  fit: BoxFit.fill,
                )),
            child: Column(
              children: [
                Text("Let's personalise your experience",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w500,letterSpacing: 1.5,fontStyle:FontStyle.italic ),),
                SizedBox(height: 30,),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                  ElevatedButton(
                  onPressed: () {
                  // Add your button's click functionality here
                },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.transparent, // Text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15), // Rounded corners
                        side: BorderSide(color: Colors.white), // Border color
                      ),
                      padding: EdgeInsets.only(left:50,top: 10,right: 80,bottom: 10), // Padding around button content
                    ),
                    child: Text("Trouble falling asleep",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
                  ),
                        ],

                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Add your button's click functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Colors.transparent, // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15), // Rounded corners
                                side: BorderSide(color: Colors.white), // Border color
                              ),
                              padding: EdgeInsets.only(left:50,top: 10,right: 85,bottom: 10), // Padding around button content
                            ),
                            child: Text("Calming a busy mind",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
                          ),
                        ],

                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Add your button's click functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Colors.transparent, // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15), // Rounded corners
                                side: BorderSide(color: Colors.white), // Border color
                              ),
                              padding: EdgeInsets.only(left:50,top: 10,right: 50,bottom: 10), // Padding around button content
                            ),
                            child: Text("Reduce stress or anxiety",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
                          ),
                        ],

                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Add your button's click functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Colors.transparent, // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15), // Rounded corners
                                side: BorderSide(color: Colors.white), // Border color
                              ),
                              padding: EdgeInsets.only(left:50,top: 10,right: 100,bottom: 10), // Padding around button content
                            ),
                            child: Text("Increase happiness",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
                          ),
                        ],

                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Add your button's click functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Colors.transparent, // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15), // Rounded corners
                                side: BorderSide(color: Colors.white), // Border color
                              ),
                              padding: EdgeInsets.only(left:50,top: 10,right: 73,bottom: 10), // Padding around button content
                            ),
                            child: Text("Create a healthy habit",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
                          ),
                        ],

                      ),

                    ],
                  ),
                )
              ],
            ),


          ),
          Container(
            padding: EdgeInsets.only(top: 800,left: 145),
            child: ElevatedButton(onPressed: () {
              _navigateToNextPage(context);
            },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.pink)
                ),
                child: Text("Continue",style: TextStyle(fontSize: 25,),)),
          )
        ],
      ),
    );
  }
}
void _navigateToNextPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => MunePg2(),
    ),
  );
}
