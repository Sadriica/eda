
import 'package:sqflite/sqflite.dart';
import 'package:eda/models/note.dart';
import 'package:path/path.dart';

/* class Operation {
  Future<Database> _openDB() async {
    await openDatabase(
        join(await getDatabasesPath(), 'operation.db'),
        onCreate: (db, version) {
          return db.execute(
            "CREATE TABLE notes (id INTEGER PRIMARY KEY, name TEXT, email TEXT, password TEXT)",);
        }, version: 1);
  }

  static Future<Future<int>> insert(Note note) async {
    Database database = await _openDB();

    return database.insert("notes", note.toMap());
  }

  static Future<List<Note>> notes() async {
    Database database = await _openDB();

    final List<Map<String, dynamic>> notesMap = await database.query("notes");

    for (var n in notesMap) {
      print("_________" + n["name"]);
    }

    return List.generate(notesMap.length, (i) => Note(id: notesMap[i]["id"],
        name: notesMap[i]["name"],
        mail: notesMap[i]["mail"],
        password: notesMap[i]["password"]));





    }
  }
*/


