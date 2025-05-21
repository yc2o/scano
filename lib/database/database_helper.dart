import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  // Initialize the database
  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'scano.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDB,
    );
  }

  // Create the database
  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE scano(
      note_id INTEGER PRIMARY KEY AUTOINCREMENT,
      title TEXT NOT NULL DEFAULT 'Untitled Note',
      date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
      content TEXT
    )
    ''')
    ;
  }

  //CRUD

  // Create new note
  Future<int> insertNote(Map<String, dynamic> note) async {
    final db = await database;
    return await db.insert('scano', note);
  }

  // Read all note
  Future<List<Map<String, dynamic>>> getNotes() async {
    final db = await database;
    return await db.query('scano', orderBy: 'note_id DESC');
  }

  // Read a specific note
  Future<List<Map<String, dynamic>>> getNote(int id) async {
    Database db = await database;
    return await db.query('scano', where: 'note_id = ?', whereArgs: [id]);
  }


  // Get a update note
  Future<int> updateNote(Map<String, dynamic> note) async {
    Database db = await database;
    return await db.update(
      'scano',
      note,
      where: 'note_id = ?',
      whereArgs: [note['note_id']],
    );
  }

  // Delete a specific note
  Future<int> deleteNote(int id) async {
    Database db = await database;
    return await db.delete(
      'scano',
      where: 'note_id = ?',
      whereArgs: [id],
    );
  }
}