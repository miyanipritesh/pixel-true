import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:honey/model/addressModel.dart';
import 'package:honey/model/userModel.dart';

class FirebaseAuthHelper {
  get user => _auth.currentUser;

  final FirebaseAuth _auth = FirebaseAuth.instance;

//SIGN UP METHOD
  Future signUp(
          {required String email,
          required String password,
          required BuildContext context,
          required String name,
          required String phone,
          required String Comformpassword,
          required BuildContext contex}) async =>
      await _auth
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then((value) => {
                Postdatatofirebase(
                    context: context,
                    name: name,
                    comformpassword: Comformpassword,
                    password: password,
                    email: email,
                    phone: phone)
              })
          .catchError((e) {});
  static Future<UserCredential> googleSignIn(
      {required BuildContext context}) async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      FirebaseAuth _auth = FirebaseAuth.instance;
      User? user;
      if (googleAuth.idToken != null && googleAuth.accessToken != null) {
        final AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

        final UserCredential user =
            await _auth.signInWithCredential(credential);
        FirebaseAuthHelper.showLoadingDialog(context);
        Future.delayed(Duration(seconds: 2));
        return user;
      } else {
        throw StateError('Missing Google Auth Token');
      }
    } else
      throw StateError('Sign in Aborted');
  }

  signOut({required BuildContext context}) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    try {
      if (!kIsWeb) {
        await googleSignIn.signOut();
      }
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('dxffgdfgfd')));
    }
  }

  //SIGN IN METHODJ
  Future signIn(email, password) async {
    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((uid) => {})
        .catchError((e) {});
  }

  //FORGET PASSWORD METHOD
  Future resetPassord(
      {required String email2, required BuildContext context}) async {
    await _auth
        .sendPasswordResetEmail(email: 'miyanipritesh1018@gmail.com')
        .then((value) => {})
        .catchError((e) {});
  }

  Postdatatofirebase(
      {required BuildContext context,
      required name,
      required phone,
      required email,
      required password,
      required comformpassword}) async {
    var firebaseFirestore = FirebaseFirestore.instance;
    UserModel usermodel = UserModel(
        phone: phone,
        email: email,
        uid: user.uid,
        Comform_password: comformpassword,
        name: name,
        password: password);
    await firebaseFirestore
        .collection('user')
        .doc(user.uid)
        .set(usermodel.toMap());
  }

  addAddresstofirebase(address, city, state, zipcode, bool ischeck) async {
    var docid = FirebaseFirestore.instance.collection('Address').doc();
    AddressModel addressmodel = AddressModel(
        docid: docid.id,
        isAgree: ischeck,
        uid: user.uid,
        address: address,
        city: city,
        state: state,
        passCode: Random().nextInt(150000),
        zipcode: zipcode);

    await docid.set(addressmodel.toMap());
  }

  static Future<void> showLoadingDialog(BuildContext context) async {
    return showDialog(
        barrierDismissible: true,
        context: context,
        builder: (_) {
          return Dialog(
            elevation: 0,
            // The background color
            backgroundColor: Colors.white,

            insetPadding: EdgeInsets.symmetric(horizontal: 150),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  // The loading indicator
                  CircularProgressIndicator(),

                  // Some text
                ],
              ),
            ),
          );
        });
  }
}
