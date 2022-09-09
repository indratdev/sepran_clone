import 'package:sepran_clone/Data/category_model.dart';
import 'package:sepran_clone/Resources/sqltables.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDatabase {
  static final SqlDatabase instance = SqlDatabase._init();
  static Database? _database;
  static SqlTables sqltables = SqlTables();
  static const String _dbName = 'dbmoney.db';

  final String tableTransaction = 'th_transaction';

  final String tableMasterCategory = 'm_category';
  final String tableOpsCategory = 'ops_category';

  SqlDatabase._init();

  Future<Database?> get database async {
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
    // create table transaction
    await db.execute('''
    CREATE TABLE $tableTransaction    (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      idCategory INTEGER,
      iconName TEXT NULL,
      title TEXT NULL,
      description TEXT NULL,
      amount REAL,
      createdTime TEXT NULL,
      createdTrxTime TEXT NULL,
      isModifield INTEGER,
      modifieldTrxTime TEXT NULL  
      )
      ''');

    // create table master category
    await db.execute('''
    CREATE TABLE $tableMasterCategory    (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      iconName TEXT NULL
      )
      ''');

    // create table ops category
    await db.execute('''
    CREATE TABLE $tableOpsCategory    (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      isIncome INTEGER,
      name TEXT NOT NULL,
      iconName TEXT NULL,
      isActive INTEGER,
      isDefault INTEGER,
      createdTime TEXT NULL,
      modifieldTime TEXT NULL  
      )
      ''');

    // insert default data
    _configureDB(db);
  }

  Future _configureDB(Database db) async {
    var createTime = DateTime.now().toString();

    sqltables.inserMasterCategory(
        db, tableMasterCategory); // insert default master category

    sqltables.insertOpsCategory(
        db, tableOpsCategory, createTime); // insert default ops category
  }

  Future closeDB() async {
    final db = await instance.database;

    if (db != null) {
      db.close();
    }
  }

  // insert category
  // ,${category.iconName}
  Future<int> insertNote(CategoryModel category) async {
    final db = await instance.database;
    int result = 0;
    if (db != null) {
      result = await db.rawInsert('''
      INSERT INTO $tableOpsCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime)
      VALUES
      (
        '${category.isIncome}'
        ,'${category.name}'
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
  Future<List<CategoryModel>> readCategory(int isIncome) async {
    final db = await instance.database;
    // const orderBy = 'createdTime ASC';

    if (db != null) {
      final result = (isIncome == 1)
          ? await db.rawQuery(
              ''' select isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime from $tableOpsCategory where isIncome = 1; ''')
          : await db.rawQuery(
              ''' select isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime from $tableOpsCategory where isIncome = 0; ''');
      // print('===> $result');
      return result.map((e) => CategoryModel.fromJson(e)).toList();
    } else {
      throw Exception('DB is NULL');
    }
  }

// read all master category
  Future<List<CategoryMasterModel>> readAllCategoryMaster() async {
    final db = await instance.database;

    if (db != null) {
      final result = await db.rawQuery(
          ''' select id, name, iconName from $tableMasterCategory; ''');

      // print('===> $result');
      return result.map((e) => CategoryMasterModel.fromJson(e)).toList();
    } else {
      throw Exception('DB is NULL');
    }
  }

  // read note by id
  // Future<NotesModel?> readNoteByID(int id) async {
  //   final db = await instance.database;

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
    final db = await instance.database;

    if (db != null) {
      return await db.rawDelete(''' DELETE FROM $tableOpsCategory''');
    }
    return 0;
  }

  // Future<int> updateNote(int id, NotesModel note) async {
  //   final db = await instance.database;
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
  //   final db = await instance.database;

  //   if (db != null) {
  //     // ('DELETE FROM Test WHERE name = ?', ['another name']);
  //     await db.rawDelete('''
  //     DELETE FROM $tableNotes WHERE id = ? ''', [id]);
  //     // return result;
  //   }
  // }

}
