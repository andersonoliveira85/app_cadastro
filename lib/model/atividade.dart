import 'package:floor/floor.dart';
import 'package:app_cadastro/model/entidade_base.dart';

@entity
class Atividade extends EntidadeBase {
  Atividade(
      {int? codigo,
      required String qdoFoiCriado,
      required this.nome,
      required this.telefone})
      : super(codigo, qdoFoiCriado);

  final String nome;
  final String telefone;
}
