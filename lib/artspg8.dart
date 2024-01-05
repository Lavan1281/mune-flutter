import 'package:flutter/material.dart';

class VisualArts extends StatefulWidget {
  const VisualArts({super.key});

  @override
  State<VisualArts> createState() => _VisualArtsState();
}

class _VisualArtsState extends State<VisualArts> {
  List imagesPath = [
    "assets/img3.jpg",
    "assets/img4.jpg",
    "assets/img5.jpg",
    "assets/img6.jpg",
    "assets/img7.jpg",
    "assets/img8.jpg",
    "assets/img11.jpg",
    "assets/img12.jpg",
    "assets/img13.jpg",
    "assets/img15.jpg",
    "assets/img16.jpg",
    "assets/img17.jpg",
    "assets/img18.jpg",
    "assets/img19.jpg",
    "assets/img20.jpg",
    "assets/img21.jpg",
    "assets/img22.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo[900],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white,),label:"home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore,color: Colors.white,),label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.white,),label: "Profile"),
        ],
      ),

      backgroundColor: Colors.indigo[200],
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 70, bottom: 10, left: 20, right: 10),
            child: Text(
              "Visual Arts",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.indigo[900],
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 30, left: 10, right: 10),
            height: 700,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 17, itemBuilder: (BuildContext context, int index) {

                return GestureDetector(
                  onTap: () {
                    // You can handle the tap action for each card here
                    // For example, you can navigate to a new page or show more information.
                    // print("Tapped on ${cardTexts[index]}");
                  },
                  child: Container(
                    width: 400,
                    height: 600,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            imagesPath[index],
                            fit: BoxFit.cover,
                            width: 400,
                            height: 652,
                          ),
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
