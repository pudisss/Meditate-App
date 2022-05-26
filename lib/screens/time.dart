import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter/cupertino.dart";
import 'package:fullshoeshop/data.dart';
import "homescreen.dart";

class Time extends StatefulWidget {
  Time({Key? key}) : super(key: key);

  @override
  State<Time> createState() => _TimeState();
}

class _TimeState extends State<Time> {

  List<String> days = [
    "SU",
    "M",
    "T",
    "W",
    "TH",
    "F",
    "S",
  ];

  // Onpressed
  bool press1 = false;
  bool press2 = false;
  bool press3 = false;
  bool press4 = false;
  bool press5 = false;
  bool press6 = false;
  bool press7 = false;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          
          color: Colors.white,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20),
                      height: 65,
                      child: Text("What time would you like to meditate?",textAlign: TextAlign.left, style: TextStyle(fontFamily: "Poppins", fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700))
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 10, right: 20),
                      width: 317,
                      height: 48,
                      child: Text("Any time you can choose but We recommend first thing in th morning.", style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w300, color: Colors.grey.withOpacity(0.6)))
                    ),
                  ]
                )
              ),
              Container(
                width: 399,
                height: 212,
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 249, 1),
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: Text("Which day would you like to meditate?", style: TextStyle(fontFamily: "Poppins", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black))
              ),
              Container(
                width: 317,
                height: 48,
                margin: EdgeInsets.only(top: 10, right: 10),
                child: Text('Everyday is best, but we recommend picking at least five.', style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w300, color: Color.fromRGBO(161, 164, 178, 1))),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            press1 = !press1;
                            sunday = !sunday;
                          });
                        },
                        child: Container(
                          width: 40.75,
                          height: 40.75,
                          
                          decoration: BoxDecoration(
                            color: press1 ? Color.fromRGBO(63, 65, 78, 1): Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: press1 ? Color.fromRGBO(63, 65, 78, 1):Color.fromRGBO(161, 164, 178, 1),)
                          ),
                          child: Center(
                            child: Text(days[0], style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: press1 ?  Color.fromRGBO(254, 255, 254, 1): Color.fromRGBO(63, 65, 78, 1)))
                          )                    
                          )
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            press2 = !press2;
                            monday = !monday;
                          });
                        },
                        child: Container(
                          width: 40.75,
                          height: 40.75,
                          
                          decoration: BoxDecoration(
                            color: press2 ? Color.fromRGBO(63, 65, 78, 1): Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: press2 ? Color.fromRGBO(63, 65, 78, 1): Color.fromRGBO(161, 164, 178, 1),)
                          ),
                          child: Center(
                            child: Text(days[1], style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: press2 ? Color.fromRGBO(254, 255, 254, 1): Color.fromRGBO(63, 65, 78, 1)))
                          )    
                      
                        )
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            press3 = !press3;
                            tuesday = !tuesday;
                          });
                        },
                        child: Container(
                      
                          width: 40.75,
                          height: 40.75,
                          
                          decoration: BoxDecoration(
                            color: press3 ? Color.fromRGBO(63, 65, 78, 1): Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: press3 ? Color.fromRGBO(63, 65, 78, 1): Color.fromRGBO(161, 164, 178, 1),)
                          ),
                          child: Center(
                            child: Text(days[2], style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: press3 ? Color.fromRGBO(254, 255, 254, 1): Color.fromRGBO(63, 65, 78, 1)))
                          )    
                      
                        )
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            press4 = !press4;
                            wednesday = !wednesday;
                          });
                        },
                        child: Container(
                          width: 40.75,
                          height: 40.75,
                          
                          decoration: BoxDecoration(
                            color: press4 ? Color.fromRGBO(63, 65, 78, 1): Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: press4 ? Color.fromRGBO(63, 65, 78, 1): Color.fromRGBO(161, 164, 178, 1),)
                          ),
                          child: Center(
                            child: Text(days[3], style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: press4 ? Color.fromRGBO(254, 255, 254, 1) : Color.fromRGBO(63, 65, 78, 1)))
                          )    
                      
                        )
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            press5 = !press5;
                            thursday = !thursday;
                          });
                        },
                        child: Container(
                          width: 40.75,
                          height: 40.75,
                          
                          decoration: BoxDecoration(
                            color: press5 ? Color.fromRGBO(63, 65, 78, 1): Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: press5 ? Color.fromRGBO(63, 65, 78, 1): Color.fromRGBO(161, 164, 178, 1),)
                          ),
                          child: Center(
                            child: Text(days[4], style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: press5 ? Color.fromRGBO(254, 255, 254, 1): Color.fromRGBO(63, 65, 78, 1)))
                          )    
                      
                        )
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            press6 = !press6;
                            friday = !friday;
                          });
                        },
                        child: Container(
                          width: 40.75,
                          height: 40.75,
                          
                          decoration: BoxDecoration(
                            color: press6 ? Color.fromRGBO(63, 65, 78, 1): Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: press6 ? Color.fromRGBO(63, 65, 78, 1): Color.fromRGBO(161, 164, 178, 1),)
                          ),
                          child: Center(
                            child: Text(days[5], style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: press6 ? Color.fromRGBO(254, 255, 254, 1): Color.fromRGBO(63, 65, 78, 1)))
                          )    
                      
                        )
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            press7 = !press7;
                            saturday = !saturday;
                          });
                        },
                        child: Container(
                          width: 40.75,
                          height: 40.75,
                          
                          decoration: BoxDecoration(
                            color: press7 ? Color.fromRGBO(63, 65, 78, 1): Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(width: 1, color: press7 ? Color.fromRGBO(63, 65, 78, 1): Color.fromRGBO(161, 164, 178, 1))
                          ),
                          child: Center(
                            child: Text(days[0], style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: press7 ? Color.fromRGBO(254, 255, 254, 1): Color.fromRGBO(63, 65, 78, 1)))
                          )    
                      
                        )
                      )
                    ),
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 20 ,right: 20),
                child: GestureDetector(
                  onTap: () {
                    List data = [
                      sunday, monday, tuesday, wednesday, thursday, friday, saturday,
                    ];

                    daysbool.add(data);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen())
                    );
                  },
                  child: Container(
                    width: 374,
                    height: 63,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromRGBO(142, 151, 253, 1),
                    ),
                    child: Center(
                      child: Text("SAVE", style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white,))
                    )
                  )
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen())
                    );
                  },
                  child: Text("No Thanks", style: TextStyle(fontFamily: "Poppins", fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400))
                )
              )

            ]
          )
        )
      )
    );
  }
}