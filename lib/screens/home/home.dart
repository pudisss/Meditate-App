import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";


class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  // Selections
  List<String> listviewfilepath = [
    "assets/images/listview1.png",
    "assets/images/listview2.png"
  ];
  List texts = [
    [
      "Basics",
      "COURSE",
      Color.fromRGBO(255, 236, 204, 1),
      Colors.white,
      
      
    ],
    [
      "Relaxation",
      "Music",
      Color.fromRGBO(63, 65, 78, 1),
      Color.fromRGBO(63, 65, 78, 1),
      

      
    ]
  ];
  List<Color> listviewcolors = [
    Color.fromRGBO(142, 151, 253, 1),
    Color.fromRGBO(255, 219, 157, 1),
  ];
  List textColor = [
    
    Color.fromRGBO(63, 65, 78, 1),
    Colors.white,
  ];
  List buttonColor = [
    Colors.white,
    Color.fromRGBO(63, 65, 78, 1),
  ];
  // Recommendation

  List<String> filepathrecommend = [
    "assets/images/recommend1.png",
    "assets/images/recommend2.png",
    "assets/images/recommend1.png"
  ];
  List<Color> recommendcolor = [
    Color.fromRGBO(132, 198, 174, 1),
    Color.fromRGBO(251, 216, 159, 1),
    Color.fromRGBO(132, 198, 174, 1)
  ];
  List<String> category = [
    "Focus",
    "Happiness",
    "Focus"
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          
          child: Column(
            children: [
              // Logo
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Image.asset('assets/images/logopng.png')
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 40, left: 20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Good Morning, Afsar", style: TextStyle(fontFamily:"Poppins", fontSize: 28, fontWeight: FontWeight.w700, color: Color.fromRGBO(63, 65, 78, 1)))
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 5,),
                      child: Text("We Wish you have a good day", style: TextStyle(fontFamily: "Poppins", fontSize: 20, fontWeight: FontWeight.w300, color: Color.fromRGBO(161, 164, 178, 1)))
                    )
                  ]
                )
              ),
              Container(
                margin:EdgeInsets.only(top: 40),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(listviewfilepath.length, (index) {
                      return Container(
                        margin: EdgeInsets.only(left: 20),
                        width: 177,
                        height: 210,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: listviewcolors[index],
                          image: DecorationImage(
                            alignment: Alignment.topRight,
                            image: AssetImage(listviewfilepath[index])
                          ),
                          
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 210 * 0.4, left: 15),

                              alignment: Alignment.centerLeft,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,

                                    child: Text(texts[index][0], style: TextStyle(fontFamily:"Poppins", fontSize: 18, fontWeight: FontWeight.w700, color: texts[index][2]))
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(texts[index][1], style: TextStyle(fontFamily:"Poppins", fontSize: 11, fontWeight: FontWeight.w400, color: texts[index][2]))
                                  ),
                                ]
                              )
                            ),
                            Spacer(),
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text("3-10 MIN", style: TextStyle(fontFamily: "Poppins", fontSize: 11, fontWeight: FontWeight.w400, color: texts[index][2]))
                                  ),
                                  Container(
                                    child: GestureDetector(
                                      child: Container(
                                        width: 70,
                                        height: 35,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: buttonColor[index],
                                        ),
                                        child: Center(
                                          child: Text("START", style: TextStyle(fontFamily:"Poppins", fontSize: 12, fontWeight: FontWeight.w400, color: textColor[index]))
                                        )
                                      )
                                    )
                                  ),
                                ]
                              )
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
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(68, 67, 89, 1),
                  image: DecorationImage(
                    image: AssetImage("assets/images/bannerbackground.png")
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text("Daily Thought", style: TextStyle(fontFamily:"Poppins", fontSize: 18, color: Colors.white, fontWeight: FontWeight.w700))
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text("MEDITATION 3-10 MIN", style: TextStyle(fontFamily: "Poppins", fontSize: 11, fontWeight: FontWeight.w400, color: Colors.white,))
                          ),
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
                            color: Colors.white,

                          ),
                          child: Center(
                            child: Icon(Icons.play_arrow, color: Colors.black)
                          )
                        )
                      )
                    ),
                    
                  ]
                )

              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 20, left: 20),
                      child: Text("Recommended for You", style: TextStyle(fontFamily:"Poppins", fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black,))
                    ),
              Container(
                height: 166,
                margin: EdgeInsets.only(top: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(filepathrecommend.length, (index) {
                      return Container(
                        width: 162,
                        height: 166,
                        margin: EdgeInsets.only(left: 20),
                        child: Column(
                        children: [
                          Container(
                            width: 162,
                            height: 113.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              
                              color: recommendcolor[index],
                              image: DecorationImage(
                                image: AssetImage(filepathrecommend[index])
                              )
                            )
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  alignment: Alignment.centerLeft,
                                  child: Text(category[index], style: TextStyle(fontFamily:"Poppins", fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black))
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text("MEDITATION TIME 3-10 MIN", style: TextStyle(fontFamily:  "Poppins", fontSize: 11, fontWeight: FontWeight.w400, color: Color.fromRGBO(161, 164, 178, 1)))
                                ),
                              ]
                            )
                          )

                        ]
                      ));
                    })
                  )
                )
              )
            ]
          )
        )
      )
    );
  }
}