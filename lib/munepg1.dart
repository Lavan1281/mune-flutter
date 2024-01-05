import 'package:flutter/material.dart';

import 'munepg5.dart';

class MuneProject extends StatefulWidget {
  const MuneProject({super.key});

  @override
  State<MuneProject> createState() => _MuneProjectState();
}

class _MuneProjectState extends State<MuneProject> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100,bottom: 60),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/night1.png"),
              fit: BoxFit.cover,

            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Mune",style: TextStyle(fontSize:70,color: Colors.white,fontStyle:FontStyle.italic),
            ),
            Column(
              children: [
                Text("Go to Sleep Happy and relaxed",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,

                  ),

                ),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20.0)),
                    ElevatedButton(
                      onPressed: () {
                        _navigateToNextPage(context);
                        // Add your button's action here
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.orangeAccent), // Background color
                        foregroundColor: MaterialStateProperty.all(Colors.white), // Text color
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0), // Padding
                        ),
                        textStyle: MaterialStateProperty.all(
                          TextStyle(fontSize: 18.0), // Text style
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0), // Border radius
                          ),
                        ),
                        elevation: MaterialStateProperty.all(4.0), // Elevation
                      ),
                      child: Text('Sign In'),
                    ),
                  ],
                ),


              ],
            ),
          ],
        ),
      ),
    );

  }
}
void _navigateToNextPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => LoginPg1(),
    ),
  );
}


