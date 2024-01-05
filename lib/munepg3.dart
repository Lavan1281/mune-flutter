import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  List cardTexts = ["Sunrise", "Calm", "Nature", "Relax", "Rain"];
  List imagesPath = [
    "assets/gradient1.jpg",
    "assets/gradient2.jpg",
    "assets/gradient3.jpg",
    "assets/gradient4.jpg",
    "assets/gradient5.jpg",
  ];
  List cardTexts1 = ["Relax","Calm","Sunrise","Rain"];
  List imagesPath1 = [
    "assets/gradimg1.jpg",
    "assets/gradimg2.jpg",
    "assets/gradimg3.jpg",
    "assets/gradimg4.jpg",
    "assets/gradimg5.jpg",

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo[700],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label:"home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore,color: Colors.white,),label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white,),label: "Profile"),
        ],
      ),
      backgroundColor: Colors.indigo[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(top: 180, bottom: 10, left: 60, right: 50),
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/munepg2.jpg"), fit: BoxFit.fill),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90), bottomRight: Radius.circular(20)),
            ),
            child: Text(
              "Sounds",
              style: TextStyle(fontSize: 38, color: Colors.indigo[700], fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 5, left: 20, right: 50),
            child: Text(
              "Playlists",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.deepPurple[900]),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 30, left: 10, right: 10),
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardTexts.length,
              itemBuilder: (context, index) {
                return GestureDetector(

                  onTap: () {
                    // You can handle the tap action for each card here
                    // For example, you can navigate to a new page or show more information.
                    // print("Tapped on ${cardTexts[index]}");
                  },
                  child: Container(
                    width: 200,
                    height: 150,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child:Column(
                        children: [
                          Image.asset(
                            imagesPath[index],
                            fit: BoxFit.cover,
                            width: 192,
                            height: 145,
                          ),
                          Spacer(),
                          Align(alignment: Alignment.bottomCenter,
                            child: Text(cardTexts[index],
                              style: TextStyle(fontSize: 20),),),
                        ],
                      ),


                      // child: Text(cardTexts[index]),

                    ),
                  ),
                );

              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 50),
            child: Text(
              "Recently played",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.deepPurple[900]),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 30, left: 10, right: 10),
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cardTexts1.length,
              itemBuilder: (context, index) {
                return GestureDetector(

                  onTap: () {
                    // You can handle the tap action for each card here
                    // For example, you can navigate to a new page or show more information.
                    // print("Tapped on ${cardTexts[index]}");
                  },
                  child: Container(
                    width: 200,
                    height: 150,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child:Column(
                        children: [
                          Image.asset(
                            imagesPath1[index],
                            fit: BoxFit.cover,
                            width: 192,
                            height: 145,
                          ),
                          Spacer(),
                          Align(alignment: Alignment.bottomCenter,
                            child: Text(cardTexts1[index],
                              style: TextStyle(fontSize: 20),),),
                        ],
                      ),


                      // child: Text(cardTexts[index]),

                    ),
                  ),
                );

              },
            ),
          ),
        ],
      ),
    );
  }
}



