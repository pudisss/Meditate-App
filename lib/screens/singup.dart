import "package:flutter/material.dart";
import 'package:flutter/semantics.dart';
import 'package:fullshoeshop/screens/welcomes.dart';
import "../database.dart";
import "../authentification.dart";

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // Controllers
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  // Essential variable
  bool isChecked = false;
  bool errorstatus = false;
  List<String> listserror = [
    "Please type your username",
    "Please type your email address",
    "Please type your password",
    "The username and password should be 8 letters up",
    "Please accept the privacy policy",
  ];
  int errorindex = 0;
  // Essential function

  Future<void> googleSignin() async {
    await Authentification.singInWithGoogle();
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Home())

    );

  }

  // Check the information that was passed by user before send it to the database function to store the data
  Future signUp() async{
    if (username.text.isNotEmpty) {
      if (email.text.isNotEmpty) {
        if (password.text.isNotEmpty) {
          if (isChecked) {
             await Database.signup(username.text, email.text, password.text);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home())
              );

          } else {
            setState(() {
              errorstatus = true;
              errorindex = 4;
            });
          }
        } else {
          setState(() {
            errorstatus = true;
            errorindex = 2;
          });
        }
      } else {
        setState(() {
          errorstatus = true;
          errorindex = 1;
        });
      }
    } else {
      setState(() {
        errorstatus = true;
        errorindex = 0;
      });
    }

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(child: Container(
          
         decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/images/loginbackground.png')
          ),
          
        ),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 50, left: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset('assets/images/loginback.png')
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("Create your Account", style: TextStyle(fontFamily: "Poppins", fontSize: 28, color: Color.fromRGBO(63, 65, 78, 1), fontWeight: FontWeight.w600)
            )),
            // Choice Login like Google and Facebook
            Container(
              child: Column(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: GestureDetector(
                          
                          child: Container(
                              width: 374,
                              height: 63,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(38),
                                  color: Color.fromRGBO(117, 131, 202, 1)
                                  ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        child: Image.asset(
                                            'assets/images/facebook.png')),
                                    Container(
                                        child: Text("Continue with Facebook",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromRGBO(246, 241, 251, 1))))
                                  ])))),
                  Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: GestureDetector(
                          
                          child: Container(
                              width: 374,
                              height: 63,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(38),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1,
                                      color: Color.fromRGBO(235, 234, 236, 1))),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                        child: Image.asset(
                                            'assets/images/google.png')),
                                    Container(
                                        child: Text("Continue with Google",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black)))
                                  ])))),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text("Or log in with Email", style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w700, color: Color.fromRGBO(161, 164, 178, 1)))
                  ),

                  // TextFields to let the user input the data to insert it to the database to store it
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 40, left: 20, right: 20),
                          child: SizedBox(
                            width: 374,
                            height: 63,

                            child: TextField(
                              controller: username,
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(242, 243, 247, 1),
                                filled: true,
                                hintText: "Username",
                                hintStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(161, 164, 178, 1),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                )
                              )
                            )
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                          child: SizedBox(
                            width: 374,
                            height: 63,

                            child: TextField(
                              controller: email,
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(242, 243, 247, 1),
                                filled: true,
                                hintText: "Email Address",
                                hintStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(161, 164, 178, 1),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                )
                              )
                            )
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                          child: SizedBox(
                            width: 374,
                            height: 63,

                            child: TextField(
                              controller: password,
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(242, 243, 247, 1),
                                filled: true,
                                hintText: "Password",
                                hintStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(161, 164, 178, 1),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide.none,
                                )
                              )
                            )
                          )
                        ),
                      ]
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "I have read the ",
                                  style: TextStyle(fontFamily:"Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(161, 164, 178, 1))
                                ),
                                TextSpan(
                                  text: "Privacy Policy",
                                  style: TextStyle(fontFamily: "Poppins", fontSize: 15, color: Color.fromRGBO(117, 131, 202, 1), fontWeight: FontWeight.w400)
                                )
                              ]
                            )
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Checkbox(
                            checkColor: Colors.white,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = !isChecked;
                              });

                            }

                          )
                        ),
                        
                      ]
                            )
                          ),
                          Container(
                          child: Visibility(
                            visible: errorstatus,
                            child: Text(listserror[errorindex], style: TextStyle(fontFamily: "Poppins", fontSize: 15, color: Colors.red, fontWeight: FontWeight.w400))
                          )
                        ),
                          Container(
                            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                          child: GestureDetector(
                            onTap: () => signUp(),
                            child: Container(
                              width: 374,
                              height: 63,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(38),
                                color: Color.fromRGBO(142, 151, 253, 1),
                              ),
                              child: Center(
                                child: Text("SIGN UP", style: TextStyle(fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(246, 241, 251, 1)))
                              )
                            )
                          )
                        ),
                        
          
        

          ])
        
                  

        )])
              )
            ));

         
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    username.dispose();
    email.dispose();
    password.dispose();
  }
}