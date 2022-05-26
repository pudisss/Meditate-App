import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "package:animations/animations.dart";
import 'homescreen.dart';
import "time.dart";
import "../data.dart";

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  
  List<Color> gridviewcolors = [
    Color.fromRGBO(128, 138, 255, 1),
    Color.fromRGBO(240, 93, 72, 1),
    Color.fromRGBO(254, 177, 143, 1),
    Color.fromRGBO(255, 207, 134, 1),
    Color.fromRGBO(108, 178, 142, 1),
    Color.fromRGBO(63, 65, 78, 1),
    Color.fromRGBO(117, 131, 202, 1),
    Color.fromRGBO(217, 165, 181, 1),
  ];
  List<String> gridviewfilepath = [
    "assets/images/bettersleep.png",
    "assets/images/improveperfor.png",
    "assets/images/increasehappiness.png",
    "assets/images/reduceanxiety.png",
    "assets/images/personalgrowth.png",
    "assets/images/bettersleep.png",
    "assets/images/bettersleep.png",
    "assets/images/bettersleep.png"
  ];

  List<String> gridviewtitle = [
    "Reduce Stress",
    "Improve Performance",
    "Increase happiness",
    "Reduce Anxiety",
    "Personal Growth",
    "Better Sleep",
    "Reduce Stress",
    "Reduce Stress",
  ];
   
  List gridview = [
    [
      double.parse("210.43"),
      176.43,
    ],
    [
      double.parse("167.43"),
      176.43,

    ],
    [
      double.parse("167.43"),
      176.43,

    ],
    [
      double.parse("210.43"),
      176.43,
    ],
    [
      double.parse("210.43"),
      176.43,
    ],
    [
      double.parse("167.43"),
      176.43
    ],
    [
      double.parse("167.43"),
      176.43
    ],
    [
      double.parse("210.43"),
      176.43,
    ]
  ];
  int indexgridview = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage(
                "assets/images/homepageclouds.png"
              )
            )
          ),
          child: Column(
            children:[
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 70, left: 20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("What Brings you", style: TextStyle(fontFamily: "Poppins", fontSize: 28, color: Colors.black, fontWeight: FontWeight.w700))
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("to Silent Moon?", style: TextStyle(fontFamily: "Poppins", fontSize: 28, color: Colors.black, fontWeight: FontWeight.w300))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      alignment: Alignment.centerLeft,
                      child: Text("choose a topic to focuse on", style: TextStyle(fontFamily: "Poppins", fontSize: 16, color: Color.fromRGBO(161, 164, 178, 1), fontWeight: FontWeight.w300))
                    )
                  ]
                )
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: (176.43 / 210),

                  
                  children: List.generate(gridview.length, (index) {

                    
                    return OpenContainer(
                      closedShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      transitionType: ContainerTransitionType.fadeThrough,
                      transitionDuration: Duration(milliseconds: 500),
                      clipBehavior: Clip.none,
                      openBuilder: (context, action) => Time(),
                      closedBuilder: (context, action) => Container(
                      
                      
                      height: gridview[index][0],
                      width: gridview[index][1],
                      decoration: BoxDecoration(
                        color: gridviewcolors[index],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SafeArea(child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Image.asset(gridviewfilepath[index])
                          ),
                          Container(
                        
                            child: Text(gridviewtitle[index],textAlign: TextAlign.center, style: TextStyle(fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white))
                          )
                        ]
                      )
                    )));
                  })
                )
              )
              
            ]
          )
        )
      )
    );
  }
}