import 'package:local_database/models/note_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static const int _version = 1;
  static const String _dbName = "pritesh3.db";

  static Future<Database> _getDB() async {
    return openDatabase(join(await getDatabasesPath(), _dbName),
        onCreate: (db, version) async => await db.execute(
            "CREATE TABLE vaya3(id INTEGER PRIMARY KEY, title TEXT NOT NULL, description TEXT NOT NULL, number TEXT NOT NULL, xender TEXT NOT NULL, date TEXT NOT NULL, time TEXT NOT NULL )"),
        version: _version);
  }

  // tbl add notes
  static Future<int> addNote(Note note) async {
    final db = await _getDB();
    final id = await db.insert("vaya3", note.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace);
    return id;
  }

  static Future<int> updateNote(Note note) async {
    final db = await _getDB();
    return await db.update("vaya3", note.toJson(),
        where: 'id = ?',
        whereArgs: [note.id],
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<int> deleteNote(Note note) async {
    final db = await _getDB();
    return await db.delete(
      "vaya3",
      where: 'id = ?',
      whereArgs: [note.id],
    );
  }

  static Future<List<Note>?> getAllNotes() async {
    final db = await _getDB();

    final List<Map<String, dynamic>> maps = await db.query("vaya3");

    if (maps.isEmpty) {
      return null;
    }

    return List.generate(maps.length, (index) => Note.fromJson(maps[index]));
  }
}
