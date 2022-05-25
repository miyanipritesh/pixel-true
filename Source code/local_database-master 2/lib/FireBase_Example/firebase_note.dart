import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

import '../models/Firebase_note_model.dart';
import 'firebase_fullnote.dart';

class FireBaseNote1 extends StatefulWidget {
  FirebaseNote? firebaseNote;
  FireBaseNote1({Key? key, this.firebaseNote}) : super(key: key);

  @override
  State<FireBaseNote1> createState() => _FireBaseNote1State();
}

class _FireBaseNote1State extends State<FireBaseNote1> {
  GlobalKey<FormState> isvalid = GlobalKey();
  bool yes1 = false;
  bool focus = false;
  DateTime date = DateTime.now();
  TimeOfDay time1 = TimeOfDay.now();
  final titleController1 = TextEditingController();
  final descriptionController1 = TextEditingController();
  final numberController1 = TextEditingController();
  String? _value1;
  bool v1 = true;

  @override
  void initState() {
    if (widget.firebaseNote != null) {
      titleController1.text = widget.firebaseNote!.title;
      descriptionController1.text = widget.firebaseNote!.email;
      _value1 = widget.firebaseNote!.xender;
      numberController1.text = widget.firebaseNote!.number;
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String formatter1 = DateFormat('dd-MM-yyyy').format(date);
    var id1 = widget.firebaseNote?.id;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => const FullNoteFirebase()));
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        backgroundColor: Colors.green.shade300,
        title: const Text(
          'Add a Detail',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              color: Colors.black,
              onPressed: () async {
                if (titleController1.value.text.isEmpty &&
                    descriptionController1.value.text.isEmpty) {
                  Fluttertoast.showToast(msg: 'Please Enter Detail  ');
                }
                final title = titleController1.value.text;
                final email = descriptionController1.value.text;
                final number = numberController1.value.text;
                final xender = _value1!;

                if (titleController1.text.isEmpty) {
                  Fluttertoast.showToast(msg: 'Enter Your Name');
                  return;
                }
                if (email.isEmpty) {
                  Fluttertoast.showToast(msg: 'Enter Your Email');
                  return;
                }
                if (number.isEmpty) {
                  Fluttertoast.showToast(msg: 'Enter Your Number');
                  return;
                }
                if (_value1!.isNotEmpty == false) {
                  Fluttertoast.showToast(msg: 'Enter Your xe');
                  return;
                }
                if (yes1 == false) {
                  Fluttertoast.showToast(msg: 'Please check checkbox');
                  return;
                }

                if (isvalid.currentState!.validate()) {
                  if (widget.firebaseNote == null) {
                    // write data to firebase
                    var docUser =
                        FirebaseFirestore.instance.collection("Note").doc();
                    final firebase = FirebaseNote(
                        id: docUser.id,
                        xender: xender,
                        title: title,
                        email: email,
                        number: number,
                        date: formatter1,
                        time: formatTimeOfDay());

                    final user = firebase.toJson();
                    await docUser.set(user);

                    Fluttertoast.showToast(msg: "Add Data Successfully");
                  } else {
                    // update data to firebase
                    final firebase1 = FirebaseNote(
                        id: id1,
                        xender: xender,
                        title: title,
                        email: email,
                        number: number,
                        date: formatter1,
                        time: formatTimeOfDay());
                    await FirebaseFirestore.instance
                        .collection("Note")
                        .doc(id1)
                        .update(firebase1.toJson());

                    Fluttertoast.showToast(msg: "Edit Successfully");
                  }
                } else {
                  Fluttertoast.showToast(msg: "Detail Is Not Valid ");
                  return;
                }

                Navigator.pop(context);
              },
              icon: const Icon(CupertinoIcons.check_mark))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: isvalid,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 30, top: 20),
                  child: Center(
                    child: Text(
                      'Enter Your Detail',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: TextFormField(
                    /*validator: (value) {
                      if (value!.isEmpty) return 'Cannot be empty';
                    },*/
                    onSaved: (value) {
                      setState(() {
                        titleController1.text = value!;
                      });
                    },
                    controller: titleController1,
                    maxLines: 1,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Name',
                        labelText: 'Enter Your Name',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide:
                                BorderSide(color: Colors.black45, width: 2)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide:
                                BorderSide(color: Colors.green, width: 3)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              // color: Colors.green,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ))),
                  ),
                ),
                TextFormField(
                  validator: (name) {
                    if (name != null && !EmailValidator.validate(name)) {
                      return 'Enter Valid Email';
                    }
                    return null;
                  },
                  controller: descriptionController1,
                  decoration: const InputDecoration(
                      hintText: 'Email',
                      labelText: 'Enter Email',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide:
                              BorderSide(color: Colors.black45, width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide:
                              BorderSide(color: Colors.green, width: 3)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ))),
                  keyboardType: TextInputType.multiline,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (number) {
                    if (number != null && number.length < 10) {
                      return "At least 10 Digit Enter";
                    }
                    return null;
                  },
                  controller: numberController1,
                  decoration: const InputDecoration(
                      hintText: 'Phone Number',
                      labelText: 'Enter Phone Number',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide:
                              BorderSide(color: Colors.black45, width: 2)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide:
                              BorderSide(color: Colors.green, width: 3)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ))),
                  keyboardType: TextInputType.number,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      //  isExpanded: true,
                      borderRadius: BorderRadius.circular(10),
                      hint: const Text('Select gender'),
                      alignment: Alignment.topLeft,
                      value: _value1,
                      items: const [
                        DropdownMenuItem(
                          child: Text('Male'),
                          value: 'Male',
                        ),
                        DropdownMenuItem(
                          child: Text('Female'),
                          value: 'Female',
                        ),
                        DropdownMenuItem(
                          child: Text('Other'),
                          value: 'Other',
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value1 = value as String;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.green.shade300)),
                        onPressed: () async {
                          DateTime? newdate = await showDatePicker(
                              context: context,
                              initialDatePickerMode: DatePickerMode.day,
                              initialDate: date,
                              firstDate: DateTime(2000),
                              lastDate: date);
                          if (newdate == null) return;
                          setState(() {
                            date = newdate;
                          });
                        },
                        child: const Text(
                          "Select Date Of Birth",
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      '${date.day} - ${date.month} -  ${date.year}',
                      style: const TextStyle(
                          fontSize: 15, decoration: TextDecoration.underline),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.green.shade300)),
                        onPressed: () async {
                          TimeOfDay? onetime = await showTimePicker(
                              context: context, initialTime: time1);
                          if (onetime == null) return;
                          setState(() {
                            time1 = onetime;
                          });
                        },
                        child: const Text(
                          "Select Time",
                          style: TextStyle(color: Colors.black),
                        )),
                    const SizedBox(
                      width: 90,
                    ),
                    Text(
                      time1.format(context),
                      style: const TextStyle(
                          fontSize: 15, decoration: TextDecoration.underline),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        activeColor: Colors.black,
                        autofocus: true,
                        value: yes1,
                        onChanged: (value) {
                          setState(() {
                            yes1 = value!;
                            //   print("---${yes}----");
                          });
                        }),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      'Accept Term And Condition ',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  formatTimeOfDay() {
    final dt =
        DateTime(date.day, date.month, date.year, time1.hour, time1.minute);
    final format = DateFormat.jm();
    return format.format(dt);
  }
}
