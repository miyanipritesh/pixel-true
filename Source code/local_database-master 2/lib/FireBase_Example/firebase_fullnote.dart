import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:local_database/models/Firebase_note_model.dart';
import 'package:local_database/services/firebase_helper.dart';

import 'firebase_note.dart';

class FullNoteFirebase extends StatefulWidget {
  const FullNoteFirebase({Key? key}) : super(key: key);

  @override
  State<FullNoteFirebase> createState() => _FullNoteFirebaseState();
}

class _FullNoteFirebaseState extends State<FullNoteFirebase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Firebase Notes"),
        centerTitle: true,
      ),
      body: StreamBuilder<List<FirebaseNote>>(
        stream: FireBaseHelper.readData(),
        builder: (context, AsyncSnapshot<List<FirebaseNote>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {},
                child: Slidable(
                  key: ValueKey(snapshot.data![index]),
                  startActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    dismissible: DismissiblePane(onDismissed: () async {
                      await FirebaseFirestore.instance
                          .collection("Note")
                          .doc(snapshot.data?[index].id)
                          .delete();
                    }),
                    children: [
                      SlidableAction(
                        onPressed: (context) async => {
                          // delete data to firebase
                          await FirebaseFirestore.instance
                              .collection("Note")
                              .doc(snapshot.data?[index].id)
                              .delete()
                        },
                        backgroundColor: const Color(0xFFFE4A49),
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                      SlidableAction(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.white,
                        icon: Icons.edit,
                        label: 'Edit',
                        onPressed: (BuildContext context) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FireBaseNote1(
                                      firebaseNote: snapshot.data![index])));
                        },
                      ),
                    ],
                  ),
                  child: Card(
                    color: Colors.white,
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Name : ${snapshot.data![index].title}',
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 12),
                            child: Divider(
                              thickness: 2,
                            ),
                          ),
                          Text('Email      : ${snapshot.data![index].email}',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text('Number : ${snapshot.data![index].number}',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text('gender   : ${snapshot.data![index].xender}',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text(
                              'Birth Of Date  : ${snapshot.data![index].date} ',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                          Text('Time        : ${snapshot.data![index].time} ',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }

          return const SizedBox.shrink();
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Add Data",
        backgroundColor: Colors.green.shade300,
        onPressed: () async {
          await Navigator.push(context,
              MaterialPageRoute(builder: (context) => FireBaseNote1()));
          setState(() {});
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
