import 'dart:io';

import 'package:flutter/material.dart';
import 'package:honey/Service/FirebaseAuthHelper.dart';
import 'package:honey/screen/loginscreen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../page/homePage.dart';
import '../shareprefrence.dart';

class SighUpScreen extends StatefulWidget {
  const SighUpScreen({Key? key}) : super(key: key);

  @override
  State<SighUpScreen> createState() => _SighUpScreenState();
}

class _SighUpScreenState extends State<SighUpScreen> {
  int currentindex = 0;
  bool ischeck = false;
  TextEditingController phonedcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController zipcontroller = TextEditingController();
  TextEditingController citycontroller = TextEditingController();
  TextEditingController statecontroller = TextEditingController();
  TextEditingController citydcontroller = TextEditingController();
  TextEditingController comformpasscontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  Image? image;
  File? imageFile;

  pickImage(ImageSource source) async {
    PickedFile? _image1 = await ImagePicker().getImage(source: source);

    if (_image1 != null) {
      setState(() {
        imageFile = File(_image1.path);
      });
      ImageSharedPrefs.saveImageToPrefs(
          ImageSharedPrefs.base64String(imageFile?.readAsBytes()));
    } else {
      print('Error picking image!');
    }
  }

  loadImageFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final imageKeyValue = prefs.getString(IMAGE_KEY);
    if (imageKeyValue != null) {
      final imageString = await ImageSharedPrefs.loadImageFromPrefs();
      setState(() {
        image = ImageSharedPrefs.imageFrom64BaseString(imageString!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B0B45),
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
              height: 80,
              width: 80,
              child: Image.asset(
                'assets/images/img_app_logo.png',
              )),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: currentindex == 0 ? Colors.white : Colors.white38,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      color: Colors.white38,
                      thickness: 2,
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: currentindex == 1 ? Colors.white : Colors.white38,
                      borderRadius: BorderRadius.circular(20)),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Divider(
                      color: Colors.white38,
                      thickness: 2,
                    ),
                  ),
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      color: currentindex == 2 ? Colors.white : Colors.white38,
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          currentindex == 0
              ? Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                      )),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'SIGN UP',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: TextFormField(
                          validator: (value) {},
                          controller: namecontroller,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: 'Full Name*',
                            labelStyle: TextStyle(color: Colors.black54),
                            hintText: 'Full Name',
                            focusColor: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: TextFormField(
                          controller: phonedcontroller,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: 'Phone*',
                            labelStyle: TextStyle(color: Colors.black54),
                            hintText: 'Phone',
                            focusColor: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      imageFile != null
                          ? Container(
                              width: 80,
                              height: 50,
                              child: Image.asset('$imageFile'),
                            )
                          : Container(
                              height: 50,
                              width: 340,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      elevation: MaterialStateProperty.all(0),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.green),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      )),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white)),
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        backgroundColor: Colors.transparent,
                                        builder: (context) => Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  height: 50,
                                                  width: 320,
                                                  child: ElevatedButton(
                                                      style: ButtonStyle(
                                                          elevation:
                                                              MaterialStateProperty
                                                                  .all(0),
                                                          shape: MaterialStateProperty
                                                              .all(
                                                                  RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .green),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25.0),
                                                          )),
                                                          backgroundColor:
                                                              MaterialStateProperty
                                                                  .all(Colors
                                                                      .green)),
                                                      onPressed: () {
                                                        pickImage(
                                                            ImageSource.camera);
                                                      },
                                                      child: Text(
                                                        'Camera',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 17),
                                                      )),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  height: 50,
                                                  width: 320,
                                                  child: ElevatedButton(
                                                      style: ButtonStyle(
                                                          elevation:
                                                              MaterialStateProperty
                                                                  .all(0),
                                                          shape: MaterialStateProperty
                                                              .all(
                                                                  RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .green),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25.0),
                                                          )),
                                                          backgroundColor:
                                                              MaterialStateProperty
                                                                  .all(Colors
                                                                      .green)),
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Gallery',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 17),
                                                      )),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  height: 50,
                                                  width: 320,
                                                  child: ElevatedButton(
                                                      style: ButtonStyle(
                                                          elevation:
                                                              MaterialStateProperty
                                                                  .all(0),
                                                          shape: MaterialStateProperty
                                                              .all(
                                                                  RoundedRectangleBorder(
                                                            side: BorderSide(
                                                                color: Colors
                                                                    .green),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        25.0),
                                                          )),
                                                          backgroundColor:
                                                              MaterialStateProperty
                                                                  .all(Colors
                                                                      .green)),
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Cancel',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 17),
                                                      )),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                )
                                              ],
                                            ));
                                  },
                                  child: Text(
                                    'Select Profile Image',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 15),
                                  )),
                            ),
                      SizedBox(
                        height: 45,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: TextFormField(
                          controller: emailcontroller,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: 'Email*',
                            labelStyle: TextStyle(color: Colors.black54),
                            hintText: 'Emaail*',
                            suffixIcon: Icon(
                              Icons.mail_outline,
                              color: Colors.black54,
                            ),
                            focusColor: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: TextFormField(
                          obscureText: true,
                          controller: passwordcontroller,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            labelText: 'Password*',
                            labelStyle: TextStyle(color: Colors.black54),
                            hintText: 'Password*',
                            suffixIcon: Icon(
                              Icons.home_outlined,
                              color: Colors.black54,
                              size: 30,
                            ),
                            focusColor: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '* Required Field',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: TextFormField(
                          validator: (value) {
                            if (comformpasscontroller.value.text ==
                                passwordcontroller.value.text) {
                              return null;
                            }
                            return 'password not match';
                          },
                          obscureText: true,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: comformpasscontroller,
                          decoration: InputDecoration(
                            labelText: 'Comform Password*',
                            labelStyle: TextStyle(color: Colors.black54),
                            hintText: 'Comform Password*',
                            suffixIcon: Icon(
                              Icons.home_outlined,
                              color: Colors.black54,
                              size: 30,
                            ),
                            focusColor: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '* Required Field',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )
              : currentindex == 1
                  ? Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            bottomRight: Radius.circular(35),
                          )),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 30),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/ic_login_previous.png',
                                  height: 15,
                                  width: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      currentindex = 0;
                                    });
                                    print("----------> ${currentindex}");
                                  },
                                  child: Text(
                                    'PREVIOUS',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'SIGN UP',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 40.0),
                            child: TextFormField(
                              controller: addresscontroller,
                              decoration: InputDecoration(
                                hintText: 'Address',
                                focusColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 40.0),
                            child: TextFormField(
                              controller: citydcontroller,
                              decoration: InputDecoration(
                                hintText: 'City',
                                focusColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 40.0),
                            child: TextFormField(
                              controller: statecontroller,
                              decoration: InputDecoration(
                                hintText: 'State',
                                focusColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 40.0),
                            child: TextFormField(
                              obscureText: true,
                              controller: zipcontroller,
                              decoration: InputDecoration(
                                hintText: 'Zip Code',
                                focusColor: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          CheckboxListTile(
                              title: Text('I agree to the Consent Agreement'),
                              contentPadding: EdgeInsets.only(left: 30),
                              side: MaterialStateBorderSide.resolveWith(
                                (states) => BorderSide(
                                    width: 1.0,
                                    color: ischeck
                                        ? Colors.green
                                        : Colors.black54),
                              ),
                              activeColor: Colors.white,
                              checkColor: Colors.green,
                              checkboxShape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.green)),
                              controlAffinity: ListTileControlAffinity.leading,
                              value: ischeck,
                              onChanged: (value) {
                                setState(() {
                                  ischeck = value!;
                                });
                              })
                        ],
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            bottomRight: Radius.circular(35),
                          )),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'THANK YOU',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Thnk You for signing up for a\n\n         Honeydoo account\n\n\n\n Didi\'t get an email? Help ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0),
            child: currentindex == 0
                ? Container(
                    height: 50,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            elevation: MaterialStateProperty.all(0),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              side: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff0B0B45))),
                        onPressed: () async {
                          FirebaseAuthHelper.showLoadingDialog(context);
                          await Future.delayed(const Duration(seconds: 2));
                          Navigator.pop(context);
                          FirebaseAuthHelper().signUp(
                              email: emailcontroller.text,
                              password: passwordcontroller.text,
                              context: context,
                              name: namecontroller.text,
                              phone: phonedcontroller.text,
                              Comformpassword: comformpasscontroller.text,
                              contex: context);
                          setState(() {
                            currentindex = 1;
                          });
                        },
                        child: Text(
                          'CONTINUE',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                  )
                : currentindex == 1
                    ? Container(
                        height: 50,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xff0B0B45))),
                            onPressed: () async {
                              if (ischeck == true) {
                                FirebaseAuthHelper.showLoadingDialog(context);
                                await Future.delayed(
                                    const Duration(seconds: 2));
                                Navigator.pop(context);
                                FirebaseAuthHelper().addAddresstofirebase(
                                  addresscontroller.text,
                                  citydcontroller.text,
                                  statecontroller.text,
                                  zipcontroller.text,
                                  ischeck,
                                );
                                setState(() {
                                  currentindex = 2;
                                });
                              }
                            },
                            child: Text(
                              'CONTINUE',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                      )
                    : Container(
                        height: 50,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xff0B0B45))),
                            onPressed: () async {
                              FirebaseAuthHelper.showLoadingDialog(context);
                              await Future.delayed(const Duration(seconds: 2));
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ));
                            },
                            child: Text(
                              'LEST START',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )),
                      ),
          ),
          SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already Have an Account?',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
