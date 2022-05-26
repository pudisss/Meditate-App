import 'package:flutter/material.dart';
import "screens/welcome.dart";
import "package:provider/provider.dart";
import "package:firebase_core/firebase_core.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:provider/provider.dart";
import "package:google_sign_in/google_sign_in.dart";

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider.value(value: FirebaseAuth.instance.authStateChanges(), initialData: null,)
      ],
      child: MaterialApp(
        home: Welcome(),
        debugShowCheckedModeBanner: false,
      )
    );
  }
}

