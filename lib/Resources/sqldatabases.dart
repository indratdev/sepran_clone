import 'package:sepran_clone/Data/category_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDatabase {
  static final SqlDatabase instance = SqlDatabase._init();
  static Database? _database;
  static const String _dbName = 'dbmoney.db';

  final String tableTransaction = 'th_transaction';
  final String tableCategory = 'm_category';

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

    // create table category
    await db.execute('''
    CREATE TABLE $tableCategory    (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      isIncome INTEGER,
      name TEXT NOT NULL,
      iconName INTEGER,
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
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (1, 'GAJI', '0xf81d', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (1, 'TABUNGAN', '0xf4d3', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (1, 'DEPOSITO', '0xf19c', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (1, 'PENDAPATAN LAINNYA', '0xf468', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'MAKANAN & MINUMAN', '0xf79f', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'TRANSPORTASI', '0xf1b9', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'RENTAL', '0xf85b', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'PEMBAYARAN', '0xf571', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'ASURANSI', '0xf4be', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'PEMELIHARAAN KENDARAAN', '0xf7d9', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'PENGELUARAN LAINNYA', '0xf468', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'FITNESS', '0xf44b', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'MAKEUP', '0xf004', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'HADIAH', '0xf06b', 1, 1, '$createTime', '');       ''');
    await db.rawInsert(
        ''' INSERT INTO $tableCategory (isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime) VALUES (0, 'REKREASI', '0xf5ca', 1, 1, '$createTime', '');       ''');
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
      INSERT INTO $tableCategory (name,isActive, isDefault, createdTime, modifieldTime)
      VALUES
      (
        '${category.name}'
        
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
      // final result = await db.query(tableNotes, orderBy: orderBy);
      // final result = await db.query(tableCategory);
      final result = (isIncome == 1)
          ? await db.rawQuery(
              ''' select isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime from $tableCategory where isIncome = 1; ''')
          : await db.rawQuery(
              ''' select isIncome, name, iconName,isActive, isDefault, createdTime, modifieldTime from $tableCategory where isIncome = 0; ''');
      print('===> $result');
      return result.map((e) => CategoryModel.fromJson(e)).toList();
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
      return await db.rawDelete(''' DELETE FROM $tableCategory''');
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
