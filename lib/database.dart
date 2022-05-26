import "package:flutter/material.dart";
import "package:google_sign_in/google_sign_in.dart";
import "package:firebase_core/firebase_core.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_database/firebase_database.dart";

class Database {
  static Future<void> signin(String username, dynamic password) async {
    DatabaseReference ref = FirebaseDatabase.instance.ref("Users");


    final databasedata = {};
    final snapshot = await ref.child("Users").get();



    


  }
  static Future<void> signup(String username, String email, String password)  async{
    DatabaseReference ref = FirebaseDatabase.instance.ref("Users");
    
    
    ref.push().update({
       "username": username,
       "email": email,
       "password": password,
     });
    

    
    
    
     
  
    

      

    
  }
}