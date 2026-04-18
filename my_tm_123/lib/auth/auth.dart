import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  User?  get currentUser => _firebaseAuth.currentUser;
  Stream<User?> get authStraightChange => _firebaseAuth.authStateChanges();

  // Future<void> signInWithEmailandPassword() {
  //   String email;
  //   String password;
  //   return _firebaseAuth.signInWithEmailAndPassword(
  //     email: _email, 
  //     password: _password,
  //     );
  // }


  // Future<void> signUpWithEmailandPassword() {
  //   String email;
  //   String password;
  //   return _firebaseAuth.createUserWithEmailAndPassword(
  //     email: email, 
  //     password: password,
  //     );
  // }

  Future<void> signOut() async{
    await _firebaseAuth.signOut();
  }

}