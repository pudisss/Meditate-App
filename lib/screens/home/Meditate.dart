import "package:flutter/material.dart";


class Meditate extends StatefulWidget {
  Meditate({Key? key}) : super(key: key);

  @override
  State<Meditate> createState() => _MeditateState();
}

class _MeditateState extends State<Meditate> {

  List<String> filepathlistview = [
    "assets/images/pad.png",
    "assets/images/heart.png",
    "assets/images/anxious.png",
    "assets/images/sleepicon.png",
    "assets/images/kids.png"

  ];
  List<String> title = [
    "All",
    "My",
    "Anxious",
    "Sleep",
    "Kids"
  ];

  // Gridview
  List<String> gridviewfilepath = [
    "assets/images/Mask Group.png",
    "assets/images/meditate2.png",
    "assets/images/meditate3.png",
    "assets/images/meditate4.png"
  ];
  List<String> gridviewtitle = [
    "7 Days of Calm",
    "Anxient Release",
    "Calm Beach",
    "Lofi Forest"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Container(
                      child: Text("Meditation", style: TextStyle(fontFamily: "Poppins", fontSize: 28, fontWeight: FontWeight.w700, color: Colors.black,))
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Text("we can learn how to recognize when our minds are doing their normal everyday acrobatics.",textAlign: TextAlign.center, style: TextStyle(fontFamily:"Poppins", fontSize: 16, fontWeight: FontWeight.w300, color: Color.fromRGBO(160, 163, 177, 1)))
                    ),
                  ]
                )
              ),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(filepathlistview.length, (index) {
                      return Container(
                        margin: EdgeInsets.only(top: 30, left: 20),
                        child: Column(
                          children: [
                            Container(
                              
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color.fromRGBO(160, 163, 177, 1),    
                                                          ),
                              child: Center(
                                child: Image.asset(filepathlistview[index], color: Colors.white)
                              )
                            ),
                            Container(
                              child: Text(title[index], style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w400, color: Color.fromRGBO(63, 65, 78, 1)))
                            )
                          ]
                        )
                      );
                    })
                  )
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                width: 374,
                height: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(241, 221, 207, 1),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/bannerbackground2.png")
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text("Daily Calm", style: TextStyle(fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.w700, color: Color.fromRGBO(63, 65, 78, 1)))
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text("APR 30 PAUSE PRACTICE", style: TextStyle(fontFamily: "Poppins", fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(90, 97, 117, 1)))
                          )
                        ]
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(63, 65, 78, 1),
                          ),
                          child: Center(
                            child: Icon(Icons.play_arrow, color: Colors.white)
                          )
                        )
                      )
                    ),
                    
                  ]
                )
              ),
              Expanded(
                      
                      
                      
                        child: GridView.count(
                        scrollDirection: Axis.vertical,
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        childAspectRatio: (176.43 / 210),
                        children: List.generate(gridviewfilepath.length, (index) {
                          return Container(
                            width: 176.43,
                            height: 210,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(gridviewfilepath[index]),
                                fit: BoxFit.fill,
                              )
                            ),
                            child: Column(
                              children: [
                                Spacer(),
                                Container(
                                  margin: EdgeInsets.only(bottom: 20, left: 20),
                                  alignment: Alignment.centerLeft,
                                  child: Text(gridviewtitle[index], style: TextStyle(fontFamily: "Poppins", fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700))
                                )
                              ]
                            )

                          );
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