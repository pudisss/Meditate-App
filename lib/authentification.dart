import "package:flutter/material.dart";
import "package:firebase_core/firebase_core.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:google_sign_in/google_sign_in.dart";

class Authentification {
  static FirebaseAuth _firebaseAuth = FirebaseAuth.instance;


  static Future singInWithGoogle() async {

    final googleSignin = GoogleSignIn();
    final googleUser = await googleSignin.signIn();
    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;
      if (googleAuth.idToken != null) {
        final userCredential = await _firebaseAuth.signInWithCredential(GoogleAuthProvider.credential(idToken: googleAuth.idToken, accessToken: googleAuth.idToken));
        return userCredential.user;
      };
      
    } else {
      throw FirebaseAuthException(message: "Signin aboarded by the user", code: "ERROR_ABORDED_BY_USER");
    }

  }
}