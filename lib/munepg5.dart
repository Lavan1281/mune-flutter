import 'package:flutter/material.dart';

import 'munepg4.dart';

class LoginPg1 extends StatefulWidget {
  const LoginPg1({super.key});

  @override
  State<LoginPg1> createState() => _LoginPg1State();
}

class _LoginPg1State extends State<LoginPg1> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
          padding: EdgeInsets.only(top: 400,bottom: 10),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/img10.jpg"),
            fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              Text("Sign in",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.w500,),),
            SizedBox(height: 130,),

            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email Id",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Container(

                   child: Column(
                     children: [
                       ElevatedButton(onPressed: (){
                         _navigateToNextPage(context);
                       },
                         style: ButtonStyle(
                             backgroundColor: MaterialStateProperty.all(Colors.red)
                         ),
                           child:Text("Sign In",style: TextStyle(fontSize: 20),),
                       ),
                     ],
                   ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New User? ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white60),),
                    Text("Register Now",style: TextStyle(fontSize:14,fontWeight: FontWeight.bold,color: Colors.blueAccent ),)
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
      builder: (context) => PgName1(),
    ),
  );
}