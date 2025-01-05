import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Dbconnection {
  Future<Database> setDataBase() async {
    var directory = await getApplicationDocumentsDirectory();
    var path = join(directory.path, "TaskManagement");

    var database = await openDatabase(path, version: 1, onCreate: createTable);
    return database;
  }

  Future<void> createTable(Database database, int version) async {
    String sql;
    sql =
        "CREATE TABLE Task( id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, description TEXT, dateTime TEXT, priority TEXT, isCompleted INTEGER)";

    await database.execute(sql);
  }
}
