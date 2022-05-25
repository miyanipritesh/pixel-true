import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../models/note_model.dart';
import '../services/database_helper.dart';
import '../widgets/note_widget.dart';
import 'note_screen.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text(
            'Local Database Notes',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "Add Data",
          backgroundColor: Colors.green,
          onPressed: () async {
            await Navigator.push(context,
                MaterialPageRoute(builder: (context) => const NoteScreen()));
            setState(() {});
          },
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
        ),
        body: FutureBuilder<List<Note>?>(
          future: DatabaseHelper.getAllNotes(),
          builder: (context, AsyncSnapshot<List<Note>?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            } else if (snapshot.hasData) {
              if (snapshot.data != null) {
                return ListView.builder(
                    itemBuilder: (context, index) => Slidable(
                          key: ValueKey(snapshot.data![index]),
                          startActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            dismissible: DismissiblePane(onDismissed: () async {
                              await DatabaseHelper.deleteNote(
                                  snapshot.data![index]);
                              setState(() {});
                            }),
                            children: [
                              SlidableAction(
                                onPressed: (context) async =>
                                    await DatabaseHelper.deleteNote(
                                        snapshot.data![index]),
                                backgroundColor: const Color(0xFFFE4A49),
                                foregroundColor: Colors.white,
                                icon: Icons.delete,
                                label: 'Delete',
                              ),
                              SlidableAction(
                                onPressed: (context) async => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => NoteScreen(
                                        note: snapshot.data![index],
                                      ),
                                    )),
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                                icon: Icons.edit,
                                label: 'Edit',
                              ),
                            ],
                          ),
                          child: NoteWidget(
                            note: snapshot.data![index],
                            onLongPress: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: const Text(
                                          'Are you sure you want to delete this note?'),
                                      actions: [
                                        ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.red)),
                                          onPressed: () async {
                                            await DatabaseHelper.deleteNote(
                                                snapshot.data![index]);
                                            Navigator.pop(context);
                                            setState(() {});
                                          },
                                          child: const Text('Yes'),
                                        ),
                                        ElevatedButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          child: const Text('No'),
                                        ),
                                      ],
                                    );
                                  });
                            },
                            onTap: () {},
                          ),
                        ),
                    itemCount: snapshot.data!.length);
              }
              /*return const Center(
                child: Text('No Data yet'),
              );*/
            }
            return const SizedBox.shrink();
          },
        ));
  }
}
