import 'dart:async';

import 'package:app_cadastro/repository/atividade_repository.dart';
import 'package:floor/floor.dart';

import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:app_cadastro/model/atividade.dart';

part 'database.g.dart';

@Database(version: 1, entities: [Atividade])
abstract class BancoDeDadosApp extends FloorDatabase {
  AtividadeRepositoryDAO get atividadeRepositoryDAO;
}
