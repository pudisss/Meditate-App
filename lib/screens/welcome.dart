import "package:flutter/material.dart";
import "singup.dart";
import "login.dart";

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          children: [
            // Welcome page image welcome
            Container(
              width: MediaQuery.of(context).size.width,
              height: 504,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/welcomebackground.png")
                )
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50),
                    child: Image.asset('assets/images/logopng.png')
                  )
                ]
              )
            ),
            // Text Section
            Container(
              child:Column(
                children: [
                  Container(
                    child: Text("We are what we do", style: TextStyle(fontFamily: "Poppins", fontSize: 25, fontWeight: FontWeight.w500, color: Color.fromRGBO(63, 65, 78, 1)))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 298,
                    height: 52,
                    child: Text("Thousand of people are usign silent moon for smalls meditation", textAlign: TextAlign.center, style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w300, color: Color.fromRGBO(161, 164, 178, 1)))
                  )
                ]
              )
            ),
            Spacer(),
            Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                  
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signup()
                    )
                  );
                },
                child: Container(
                  width: 374,
                  height: 63,
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38),
                    color: Color.fromRGBO(142, 151, 253, 1),
                  ),
                  child: Center(
                    child: Text('SIGN UP', style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w600, color: Color.fromRGBO(246, 241, 251, 1)))
                  )
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login()
                    )
                  );
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "ALREADY HAVE AN ACCOUNT?",
                        style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(161, 164, 178, 1))
                      ),
                      TextSpan(
                        text: "LOG IN",
                        style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(142, 151, 253, 1))
                      )
                    ]
                  )
                )
              )
            )
          ]
        )

      )
    );
  }
}