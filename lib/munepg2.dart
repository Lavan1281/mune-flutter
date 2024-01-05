import 'package:flutter/material.dart';

import 'artspg8.dart';
import 'munepg3.dart';
import 'munepg7.dart';

class MunePg2 extends StatefulWidget {
  const MunePg2({super.key});

  @override
  State<MunePg2> createState() => _MunePg2State();
}

class _MunePg2State extends State<MunePg2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue[900],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label:"home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore,color: Colors.white,),label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white,),label: "Profile"),
        ],
      ),
      body: Stack(
        children: [
          Container(

          padding: EdgeInsets.only(left:10,top: 70,bottom: 400),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img2.jpg"),
                fit: BoxFit.fill,

              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("What interests you most about Mune?",style: TextStyle(fontSize:30,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 1.5,fontStyle: FontStyle.italic),
              ),

              Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(

                      children: [
                        ElevatedButton(
                            onPressed: () {
                              // Add your button's click functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Colors.transparent, // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8), // Rounded corners
                                side: BorderSide(color: Colors.white), // Border color
                              ),
                              padding: EdgeInsets.only(left: 25,top: 30,right: 15,bottom: 30), // Padding around button content
                            ),
                            child: Text("Sleep Tracking",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _navigateToNextPage(context);
                              // Add your button's click functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Colors.transparent, // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8), // Rounded corners
                                side: BorderSide(color: Colors.white), // Border color
                              ),
                              padding: EdgeInsets.only(left: 25,top: 30,right:15,bottom: 30), // Padding around button content
                            ),
                            child: Text("Calm Sounds",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                        ),

                      ],
                    ),


                  ],
                ),

              ),
              Container(


                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _navigateToNextPage1(context);
                              // Add your button's click functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Colors.transparent, // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8), // Rounded corners
                                side: BorderSide(color: Colors.white), // Border color
                              ),
                              padding: EdgeInsets.only(left: 38,top: 30,right: 30,bottom: 30), // Padding around button content
                            ),
                            child: Text("Meditations",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              _navigateToNextPage2(context);

                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white, backgroundColor: Colors.transparent, // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8), // Rounded corners
                                side: BorderSide(color: Colors.white), // Border color
                              ),
                              padding: EdgeInsets.only(left: 38,top: 30,right: 30,bottom: 30), // Padding around button content
                            ),
                            child: Text("Visual Arts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        ],

      ),

    );


  }


}
void _navigateToNextPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => Page5(),
    ),
  );
}
void _navigateToNextPage1(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => Page7(),
    ),
  );
}
void _navigateToNextPage2(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => VisualArts(),
    ),
  );
}