import 'package:sepran_clone/Data/category_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDatabase {
  static final SqlDatabase instance = SqlDatabase._init();
  static Database? _database;
  static String _dbName = 'dbmoney.db';
  // SqlTables tabless = SqlTables();

  SqlDatabase._init();

  Future<Database?> get databse async {
    if (_database != null) return _database;

    _database = await _initDB(_dbName);
    return _database;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    print('lokasi db : $dbPath');
    final path = join(dbPath, filePath);

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  // create table category
  Future _createDB(Database db, int version) async {
    await db.execute('''
    CREATE TABLE $tableCategory }   (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      iconName TEXT NULL,
      isActive INTEGER,
      isDefault INTEGER,
      createdTime TEXT NULL,
      modifieldTime TEXT NULL  
      )
      ''');
  }

  Future closeDB() async {
    final db = await instance.databse;

    if (db != null) {
      db.close();
    }
  }

  // insert category
  Future<int> insertNote(CategoryModel category) async {
    final db = await instance.databse;
    int result = 0;
    if (db != null) {
      result = await db.rawInsert('''
      INSERT INTO $tableCategory (name, iconName,isActive, isDefault, createdTime, modifieldTime)
      VALUES
      (
        '${category.name}'
        ,'${category.iconName}'
        ,'${category.isActive}'
        ,'${category.isDefault}'
        ,'${category.createdTime}'
        ,'${category.modifieldTime}'
        );
      ''');
    }
    return result;
  }

  //read all
  Future<List<CategoryModel>> readAllCategory() async {
    final db = await instance.databse;
    // const orderBy = 'createdTime ASC';

    if (db != null) {
      // final result = await db.query(tableNotes, orderBy: orderBy);
      final result = await db.query(tableCategory);
      print('===> $result');
      return result.map((e) => CategoryModel.fromJson(e)).toList();
    } else {
      throw Exception('DB is NULL');
    }
  }

  // read note by id
  // Future<NotesModel?> readNoteByID(int id) async {
  //   final db = await instance.databse;

  //   if (db != null) {
  //     final result =
  //         await db.query(tableNotes, where: 'id = ?', whereArgs: [id]);

  //     if (result.isNotEmpty) {
  //       return NotesModel.fromJson(result.first);
  //     }
  //     return null;
  //   } else {
  //     throw Exception('DB is NULL');
  //   }
  // }

  // delete data table note
  Future<int> deleteTableNotes() async {
    final db = await instance.databse;

    if (db != null) {
      return await db.rawDelete(''' DELETE FROM $tableCategory''');
    }
    return 0;
  }

  // Future<int> updateNote(int id, NotesModel note) async {
  //   final db = await instance.databse;
  //   int result = 0;

  //   if (db != null) {
  //     return result = await db.rawUpdate('''UPDATE $tableNotes
  //         SET
  //         title = ?
  //         , content = ?
  //         , noteColor = ?
  //         , createdTime = ?
  //         , modifieldTime = ?
  //         WHERE id = ?''', [
  //       note.title,
  //       note.content,
  //       note.noteColor,
  //       '${note.createdTime}',
  //       '${note.modifieldTime}',
  //       '$id'
  //     ]);
  //     // return result = await db
  //     //     .update(tableNotes, note.toJson(), where: 'id = ?', whereArgs: [id]);
  //   }

  //   return result;
  // }

  // delete note by id
  // Future<void> deleteNoteByID(int id) async {
  //   final db = await instance.databse;

  //   if (db != null) {
  //     // ('DELETE FROM Test WHERE name = ?', ['another name']);
  //     await db.rawDelete('''
  //     DELETE FROM $tableNotes WHERE id = ? ''', [id]);
  //     // return result;
  //   }
  // }

}
