import 'dart:core';

import 'package:clipboard/clipboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:honey/model/addressModel.dart';
import 'package:honey/model/taskModel.dart';

import 'chaneAddress.dart';

get user => FirebaseAuth.instance.currentUser;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

TextEditingController passwordcontroller = TextEditingController();
TextEditingController phonecontroller = TextEditingController();
TextEditingController namecontroller = TextEditingController();
TextEditingController emailcontroller = TextEditingController();

class _ProfileScreenState extends State<ProfileScreen> {
  bool ischeck = false;
  var docSnapshot = FirebaseFirestore.instance
      .collection('user')
      .doc(user.uid)
      .get()
      .then((event) {
    Map<String, dynamic> data = event.data()!;
    emailcontroller.text = data['email'];
    passwordcontroller.text = data['password'];
    namecontroller.text = data['name'];
    phonecontroller.text = data['phone'];
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B0B45),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF0B0B45),
        centerTitle: true,
        title: Column(
          children: [
            Image.asset(
              'assets/images/img_app_logo.png',
              height: 20,
              width: 20,
            ),
            Text(
              'HoneyDoo',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 130,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white)),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomRight,
                children: [
                  Positioned(
                    left: 100,
                    top: 75,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Image.asset(
                        'assets/images/ic_edit.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'test',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              '',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      '0',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Complete tasks to ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Flexible(
                    child: Container(
                  height: 30,
                  child: VerticalDivider(
                    width: 2,
                    color: Colors.white,
                  ),
                )),
                Column(
                  children: [
                    Text(
                      '0',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'JUNE 2022',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Account information',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image.asset(
                              'assets/images/ic_edit.png',
                              height: 20,
                              width: 20,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: emailcontroller,
                        onSaved: (e) {
                          e = emailcontroller.value.text;
                        },
                        decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          suffixIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.black54,
                            size: 20,
                          ),
                          focusColor: Colors.black,
                        ),
                      ),
                      TextFormField(
                        controller: passwordcontroller,
                        onSaved: (e) {
                          e = passwordcontroller.value.text;
                        },
                        decoration: InputDecoration(
                          hintText: 'password',
                          labelText: 'password',
                          suffixIcon: Icon(
                            Icons.home_outlined,
                            color: Colors.black54,
                            size: 25,
                          ),
                          focusColor: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Personal information',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Image.asset(
                              'assets/images/ic_edit.png',
                              height: 20,
                              width: 20,
                            ),
                          )
                        ],
                      ),
                      TextFormField(
                        controller: namecontroller,
                        onSaved: (e) {
                          e = namecontroller.value.text;
                        },
                        decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Full Name',
                          focusColor: Colors.black,
                        ),
                      ),
                      TextFormField(
                        controller: phonecontroller,
                        onSaved: (e) {
                          e = phonecontroller.value.text;
                        },
                        decoration: InputDecoration(
                          hintText: 'password',
                          labelText: 'Phone',
                          focusColor: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Location information',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.green)),
                            child: Text(
                              'Change Address',
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CnageAddress(),
                                  ));
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.black26)),
                          child: StreamBuilder<QuerySnapshot>(
                              stream: FirebaseFirestore.instance
                                  .collection('Address')
                                  .where('isAgree', isEqualTo: true)
                                  .where('uid',
                                      isEqualTo: FirebaseAuth
                                          .instance.currentUser!.uid)
                                  .snapshots(),
                              builder: (context, snapshot) {
                                return Column(
                                  children: [
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Address',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              '${snapshot.data?.docs[0]['address']}',
                                              style: TextStyle(
                                                  color: Colors.black26),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 70,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'City',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              '${snapshot.data?.docs[0]['city']}',
                                              style: TextStyle(
                                                  color: Colors.black26),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 70,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Stole',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              '${snapshot.data?.docs[0]['state']}',
                                              style: TextStyle(
                                                  color: Colors.black26),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 80,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'ZipCode',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              '${snapshot.data?.docs[0]['zipcode']}',
                                              style: TextStyle(
                                                  color: Colors.black26),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 26.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'Address Passcode: ',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  FlutterClipboard.copy(
                                                          '${snapshot.data?.docs[0]['passCode']}')
                                                      .then((value) =>
                                                          Fluttertoast.showToast(
                                                              msg:
                                                                  '${snapshot.data?.docs[0]['passCode']} copy'));
                                                },
                                                child: Icon(
                                                  Icons.copy,
                                                  size: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '${snapshot.data?.docs[0]['passCode']}',
                                            style: TextStyle(
                                                color: Colors.black26),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              })),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.black26)),
                        child: Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 13.0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'All Locational',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10.0),
                                child: StreamBuilder<QuerySnapshot>(
                                  stream: FirebaseFirestore.instance
                                      .collection('Address')
                                      .where('uid',
                                          isEqualTo: FirebaseAuth
                                              .instance.currentUser!.uid)
                                      .snapshots(),
                                  builder: (BuildContext context, snapshot) {
                                    return ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: snapshot.data!.docs.length,
                                      itemBuilder: (context, index) => Column(
                                        children: [
                                          Container(
                                            height: 60,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                border: Border.all(
                                                    color: Colors.black26)),
                                            child: ListTile(
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              title: Text(
                                                'Address',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              subtitle: Text(
                                                '${snapshot.data!.docs[index]['address']},'
                                                ' ${snapshot.data!.docs[index]['state']}, '
                                                '${snapshot.data!.docs[index]['city']},'
                                                ' ${snapshot.data!.docs[index]['zipcode']}',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black26,
                                                ),
                                              ),
                                              trailing: Checkbox(
                                                  checkColor: Colors.white,
                                                  fillColor:
                                                      MaterialStateProperty.all(
                                                          Color(0xFF0B0B45)),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  onChanged: (value) {
                                                    ischeck = value!;
                                                  },
                                                  value: snapshot.data!
                                                      .docs[index]['isAgree']),
                                              onTap: () async {
                                                await FirebaseFirestore.instance
                                                    .collection('Address')
                                                    .where('uid',
                                                        isEqualTo: FirebaseAuth
                                                            .instance
                                                            .currentUser!
                                                            .uid)
                                                    .where('isAgree',
                                                        isEqualTo: true)
                                                    .get()
                                                    .then((event) {
                                                  event.docs[0].reference
                                                      .update(
                                                          {'isAgree': false});
                                                });

                                                FirebaseFirestore.instance
                                                    .collection('Address')
                                                    .where('uid',
                                                        isEqualTo: FirebaseAuth
                                                            .instance
                                                            .currentUser!
                                                            .uid)
                                                    .get()
                                                    .then((value) => {
                                                          value.docs[index]
                                                              .reference
                                                              .update({
                                                            'isAgree': true
                                                          })
                                                        });
                                                setState(() {});
                                              },
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FireBaseHelper {
  static Stream<List<AddressModel>> readData() {
    final read = FirebaseFirestore.instance
        .collection('Address/${user.email}/Address')
        .snapshots()
        .map((event) =>
            event.docs.map((e) => AddressModel.fromMap(e.data())).toList());
    return read;
  }

  static Stream<List<TaskModle>> readTask() {
    return FirebaseFirestore.instance
        .collection('task')
        .where('location', isEqualTo: 'Kitchen')
        .where('jan', isEqualTo: true)
        .snapshots()
        .map((event) =>
            event.docs.map((e) => TaskModle.fromJson(e.data())).toList());
  }
}
