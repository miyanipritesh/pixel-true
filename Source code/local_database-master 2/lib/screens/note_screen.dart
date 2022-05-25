import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';
import 'package:local_database/models/note_model.dart';
import 'package:local_database/services/database_helper.dart';

import 'notes_screen.dart';

class NoteScreen extends StatefulWidget {
  final Note? note;
  const NoteScreen({Key? key, this.note}) : super(key: key);

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  GlobalKey<FormState> isvalid = GlobalKey();
  bool yes = false;
  bool focus = false;
  DateTime date1 = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  String? data2;
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final numberController = TextEditingController();
  final date1Controller = TextEditingController();
  String? _value;
  bool v = true;
  @override
  void initState() {
    titleController.addListener(() {});
    if (widget.note != null) {
      titleController.text = widget.note!.title;
      descriptionController.text = widget.note!.description;
      _value = widget.note!.xender;
      numberController.text = widget.note!.number;
    }
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String formatter = DateFormat('dd-MM-yyyy').format(date1);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const NotesScreen()));
          },
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
        ),
        backgroundColor: Colors.green.shade300,
        title: Text(
          widget.note == null ? 'Add a Detail' : 'Edit Detail',
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              color: Colors.black,
              onPressed: () async {
                if (titleController.value.text.isEmpty) {
                  Fluttertoast.showToast(msg: 'Please Enter Detail  ');
                }

                final title = titleController.value.text;
                final description = descriptionController.value.text;
                final number = numberController.value.text;
                final xender = _value!;
                final date = formatter;
                if (title.isEmpty) {
                  Fluttertoast.showToast(msg: 'Enter Your Name');
                  return;
                } else if (description.isEmpty) {
                  Fluttertoast.showToast(msg: 'Enter Your Email');
                } else if (number.isEmpty) {
                  Fluttertoast.showToast(msg: 'Enter Your Number');
                } else if (_value!.isNotEmpty == false) {
                  Fluttertoast.showToast(msg: 'Enter Your xe');
                }

                final Note model = Note(
                  title: title,
                  description: description,
                  id: widget.note?.id,
                  number: number,
                  xender: xender,
                  date: date,
                  time: formatTimeOfDay(),
                );
                if (yes == false) {
                  Fluttertoast.showToast(msg: 'Please check checkbox');
                  return;
                }
                if (isvalid.currentState!.validate()) {
                  if (widget.note == null) {
                    await DatabaseHelper.addNote(model);
                    Fluttertoast.showToast(msg: "Add Data Successfully");
                  } else {
                    await DatabaseHelper.updateNote(model);
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
                    validator: (value) {
                      if (value!.isEmpty) return 'Cannot be empty';
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        titleController.text = value!;
                      });
                    },
                    controller: titleController,
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
                  onSaved: (value) {
                    setState(() {
                      descriptionController.text = value!;
                    });
                  },
                  controller: descriptionController,
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
                  onChanged: (str) {},
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  onTap: () {},
                  onSaved: (value) {
                    setState(() {
                      numberController.text = value!;
                    });
                  },
                  validator: (number) {
                    if (number != null && number.length < 10) {
                      return "At least 10 Digit Enter";
                    }
                    return null;
                  },
                  controller: numberController,
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
                  onChanged: (str) {},
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
                      value: _value,
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
                          _value = value as String;
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
                              initialDate: date1,
                              firstDate: DateTime(2000),
                              lastDate: date1);
                          if (newdate == null) return;
                          setState(() {
                            date1 = newdate;
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
                      '${date1.day} - ${date1.month} -  ${date1.year}',
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
                          TimeOfDay? newtime = await showTimePicker(
                              context: context, initialTime: time);
                          if (newtime == null) return;
                          setState(() {
                            time = newtime;
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
                      time.format(context),
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
                        value: yes,
                        onChanged: (value) {
                          setState(() {
                            yes = value!;
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
        DateTime(date1.day, date1.month, date1.year, time.hour, time.minute);
    final format = DateFormat.jm();
    return format.format(dt);
  }
}
