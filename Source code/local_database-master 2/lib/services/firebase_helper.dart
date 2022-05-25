import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/Firebase_note_model.dart';

class FireBaseHelper {
  //read data from firebase
  static Stream<List<FirebaseNote>> readData() {
    final va = FirebaseFirestore.instance.collection('Note').snapshots().map(
        (event) =>
            event.docs.map((e) => FirebaseNote.fromJson(e.data())).toList());
    return va;
  }
}
