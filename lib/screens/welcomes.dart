import "package:flutter/material.dart";
import 'selected.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.bottomCenter,
            image: AssetImage("assets/images/welcomeimage.png")
          ),
          color: Color.fromRGBO(142, 151, 253, 1),

        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('assets/images/logopng.png')
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Container(
                    child: Text("Hi Aftar, Welcome", style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(255, 236, 204, 1),
                    ))
                  ),
                  Container(
                    child: Text("to Silent Moon", style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 30,
                      fontWeight: FontWeight.w100,
                      color: Color.fromRGBO(255, 236, 204, 1),
                    ))
                  )
                ]
              )
            ),
            Container(
              width: 317,
              height: 48,
              margin: EdgeInsets.only(top: 40),

              child: Text("Explore the app, Find some peace of mind to prepare for meditation.",textAlign: TextAlign.center, style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color.fromRGBO(235, 234, 236, 1),
              ))
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 50, left: 20, right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homepage()
                    )
                  );
                },
                child: Container(
                  width: 374,
                  height: 63,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(235, 234, 236, 1),
                    borderRadius: BorderRadius.circular(38),
                  ),
                  child: Center(child: Text("GET STARTED", style: TextStyle(fontFamily: "Poppins", fontSize: 17, color: Color.fromRGBO(63, 65, 78, 1), fontWeight: FontWeight.w500)))
                )
              )
            )
            
              
            
            
          ]
        )
      )
    );
  }
}