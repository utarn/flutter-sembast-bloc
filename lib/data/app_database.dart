import 'dart:async';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class AppDatabase {
  static final AppDatabase _singleton = AppDatabase._();

  static AppDatabase get instance => _singleton;
  Completer<Database> _dbOpenCompleter;
  AppDatabase._();

  Future<Database> get database async => await _openDatabase();

  Future<Database> _openDatabase() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    final dbPath = join(appDocumentDir.path, 'demo.db');
    final database = await databaseFactoryIo.openDatabase(dbPath);
    return database;
  }
}
