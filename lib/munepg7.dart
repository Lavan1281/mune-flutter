import 'package:flutter/material.dart';

class Page7 extends StatefulWidget {
  const Page7({super.key});

  @override
  State<Page7> createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  List cardTexts = ["Daily Calm   10min", "Stay Happy   15min", "Lunatic     10min", "Sleep Travel  18min", "Loneliness   10min"];
  List imagesPath = [
    "assets/gradimg16.jpg",
    "assets/gradimg17.jpg",
    "assets/gradimg18.jpg",
    "assets/gradimg19.jpg",
    "assets/gradimg20.jpg",

  ];
  List cardTexts1 = ["Sleep travel  18min","Stay Happy  15min","Daily Calm  10min","Loneliness  10min"];
  List imagesPath1 = [
    "assets/gradimg11.jpg",
    "assets/gradimg12.jpg",
    "assets/gradimg13.jpg",
    "assets/gradimg14.jpg",
    "assets/gradimg15.jpg",

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown[700],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.arrow_back,color: Colors.white,),label:"home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore,color: Colors.white,),label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white,),label: "Profile"),
        ],
      ),
      backgroundColor: Colors.brown[100],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(top: 180, bottom: 10, left: 60, right: 50),
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/gradient7.jpg"), fit: BoxFit.fill),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90), bottomRight: Radius.circular(20)),
            ),
            child: Text(
              "Meditations",
              style: TextStyle(fontSize: 38, color: Colors.brown[700], fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 5, left: 20, right: 50),
            child: Text(
              "Recently played",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.blueGrey[900]),
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
              "Most Popular",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Colors.blueGrey[900]),
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



