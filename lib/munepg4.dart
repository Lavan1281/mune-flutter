// import 'package:flutter/material.dart';
//
// class PgName1 extends StatefulWidget {
//   const PgName1({super.key});
//
//   @override
//   State<PgName1> createState() => _PgName1State();
// }
//
// class _PgName1State extends State<PgName1> {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Container(
//         padding: EdgeInsets.only(top: 100,bottom:10,right: 30),
//         decoration: BoxDecoration(
//           image: DecorationImage(image: AssetImage("assets/img1.jpg"),
//               fit: BoxFit.cover),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text("Welcome to Mune!",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 1.5,fontStyle: FontStyle.italic),),
//
//           Row(
//             children: [
//               Container(
//                 padding: EdgeInsets.only(top: 10,bottom: 710,left: 28),
//                 child:
//               Text("What do your friends call you?",style: TextStyle(fontSize: 20,color: Colors.white),),
//               ),
//             ],
//           ),
//             Row(
//               children: [
//                 Column(
//                   children: [
//
//
//                   ],
//                 )
//
//               ],
//             )
//           ],
//
//         ),
//
//
//
//
//       ),
//
//     );
//   }
// }
//
//
import 'package:flutter/material.dart';

import 'munepg6.dart';

class PgName1 extends StatefulWidget {
  const PgName1({super.key});

  @override
  State<PgName1> createState() => _PgName1State();
}

class _PgName1State extends State<PgName1> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 400, right: 30),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/img1.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Welcome to Mune!",
              style: TextStyle(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                fontStyle: FontStyle.italic,
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10,bottom: 10,left: 28),
                  child: Text(
                    "What do your friends call you?",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Container(

                    padding: EdgeInsets.only(left: 20),
                    child: TextFormField(
                      controller: _nameController, // Controller to manage the input text
                      style: TextStyle(color: Colors.white), // Text color
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black), // Border color
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 10,left: 120,top: 90),
                  child: ElevatedButton(onPressed: (){
                    _navigateToNextPage(context);
                  },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.brown[400]), // Change this color to your desired background color
                    ),
                      child: Text("Continue",style: TextStyle(fontSize: 30),),

                  ),
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
      builder: (context) => ExperiencePg(),
    ),
  );
}


