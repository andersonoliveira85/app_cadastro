import 'package:app_cadastro/model/entidade_base.dart';
import 'package:floor/floor.dart';

abstract class IRepositoryDAO<Model extends EntidadeBase> {
  @insert
  Future<int> insertItem(Model item);

  Future<int> updateItem(Model item);

  Future<int> deleteItem(Model item);
}
