import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../model/user_model.dart';
import '../screen/SignupScreen.dart';
import '../screen/homeScreen.dart';

class AuthenticationHelper {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  get user1 => _auth.currentUser;

//SIGN UP METHOD
  Future signUp(
          {required String email,
          required String password,
          required BuildContext context}) async =>
      await _auth
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then((value) => {Postdatatofirebase(context: context)})
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });

  //SIGN IN METHODJ
  Future signIn(
      {required String email,
      required String password,
      required BuildContext context}) async {
    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((uid) => {
              Fluttertoast.showToast(msg: 'Sign in succesfull'),
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              )
            })
        .catchError((e) {
      Fluttertoast.showToast(msg: e!.message);
    });
  }

  //SIGN OUT METHOD
  Future<void> signOut() async {
    await _auth.signOut();
  }

  //FORGET PASSWORD METHOD
  Future resetPassord(
      {required String email2, required BuildContext context}) async {
    await _auth
        .sendPasswordResetEmail(email: 'miyanipritesh1018@gmail.com')
        .then((value) => {
              Fluttertoast.showToast(msg: "Reset link show in email"),
              Navigator.pop(context)
            })
        .catchError((e) {
      Fluttertoast.showToast(msg: e!.message);
    });
  }

  Postdatatofirebase({required BuildContext context}) async {
    var firebaseFirestore = FirebaseFirestore.instance;
    UserModel usermodel =
        UserModel(email: user1.email, firstName: name.text, uid: user1.uid);

    await firebaseFirestore
        .collection('user')
        .doc(user1.uid)
        .set(usermodel.toMap());
    Fluttertoast.showToast(msg: 'Create Account SuccessFully');
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => Home(),
      ),
    );
  }
}
