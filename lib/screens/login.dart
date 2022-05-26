import "package:flutter/material.dart";
import "../authentification.dart";
import 'welcomes.dart';
import "../database.dart";
import "singup.dart";

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // TextField controller
  final email = TextEditingController();
  final password = TextEditingController();

  bool errortext = false;
  List<String> errortexts = [
    "Please enter the information upbow",
    "The length is lower than 8"
  ];
  int errorindex = 0;

  // Authentication function

  Future<void> Signin() async {
    await Authentification.singInWithGoogle();
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

  Future checkSignin(String name, dynamic pwd) async{
    if (email.text.isNotEmpty && password.text.isNotEmpty) {
      if (password.text.length >= 8) {
        await Database.signin(name, pwd).catchError((error) {});
      } else {
        setState(() {
          errortext = true;
          errorindex = 1;
        });
      }
    } else {
      setState(() {
        errortext = true;
        errorindex = 0;
      });
    }
  }

  // Initstate function

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        alignment: Alignment.topCenter,
                        image:
                            AssetImage('assets/images/loginbackground.png'))),
                child: Column(children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 40, left: 20),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset('assets/images/loginback.png'))),
                  Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text("Welcome Back!",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(63, 65, 78, 1),
                            fontSize: 28,
                          ))),
                  Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 40),
                      child: GestureDetector(
                          child: Container(
                              width: 374,
                              height: 63,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(38),
                                color: Color.fromRGBO(117, 131, 202, 1),
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
                                                color: Color.fromRGBO(
                                                    246, 241, 251, 1))))
                                  ])))),
                  Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                      child: GestureDetector(
                          onTap: Signin,
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
                      margin: EdgeInsets.only(top: 40),
                      child: Text("Or log in with email",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(161, 164, 178, 1)))),
                  Container(
                      child: Column(children: [
                    Container(
                        margin: EdgeInsets.only(top: 40, left: 20, right: 20),
                        child: SizedBox(
                            width: 374,
                            height: 63,
                            child: TextField(
                                controller: email,
                                decoration: InputDecoration(
                                    hintText: "Email Address",
                                    hintStyle: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Color.fromRGBO(161, 164, 178, 1),
                                    ),
                                    fillColor: Color.fromRGBO(242, 243, 247, 1),
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide.none,
                                    ))))),
                    Container(
                        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: SizedBox(
                            width: 374,
                            height: 63,
                            child: TextField(
                                controller: password,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(
                                        fontFamily: "Poppins",
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color:
                                            Color.fromRGBO(161, 164, 178, 1)),
                                    fillColor: Color.fromRGBO(242, 243, 247, 1),
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide.none,
                                    ))))),
                    Visibility(
                        visible: errortext,
                        child: Text(errortexts[errorindex],
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 16,
                                color: Colors.red,
                                fontWeight: FontWeight.w500))),
                    Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                        child: GestureDetector(
                            onTap: () =>
                                checkSignin(email.text, password.text),
                            child: Container(
                                width: 374,
                                height: 63,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromRGBO(142, 151, 253, 1),
                                ),
                                child: Center(
                                    child: Text("LOG IN",
                                        style: TextStyle(
                                            fontFamily: "Poppins",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromRGBO(
                                                246, 241, 251, 1))))))),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        child: GestureDetector(
                            child: Text("Forgot you password",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(63, 65, 78, 1))))),
                    Container(
                        margin: EdgeInsets.only(top: 30),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Signup()));
                            },
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Don't have an account?",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(161, 164, 178, 1))),
                              TextSpan(
                                  text: "Signup",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromRGBO(142, 151, 253, 1)))
                            ]))))
                  ]))
                ]))));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    email.dispose();
    password.dispose();
  }
}
