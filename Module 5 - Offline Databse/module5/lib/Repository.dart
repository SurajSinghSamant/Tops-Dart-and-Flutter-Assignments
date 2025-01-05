import 'package:module5/DbConnection.dart';
import 'package:sqflite/sqflite.dart';

class Repository {
  late Dbconnection dbconnection;

  Repository() {
    dbconnection = Dbconnection();
  }

  static Database? database;

  Future<Database?> get mydatabase async {
    if (database != null) {
      return database;
    } else {
      database = await dbconnection.setDataBase();
      return database;
    }
  }

  insertData(tablename, data) async {
    var con = await mydatabase;
    return await con!.insert(tablename, data);
  }

  readData(tablename) async {
    var con = await mydatabase;
    return await con!.query(tablename);
  }

  readSingleData(tablename, id) async {
    var con = await mydatabase;
    return await con!.query(tablename, where: "id = ?", whereArgs: [id]);
  }

  updateData(tablename, data) async {
    var con = await mydatabase;
    return await con!
        .update(tablename, data, where: "id = ?", whereArgs: [data["id"]]);
  }

  deleteData(tablename, data) async {
    var con = await mydatabase;
    return await con!
        .delete(tablename, where: "id = ?", whereArgs: [data['id']]);
  }
}
