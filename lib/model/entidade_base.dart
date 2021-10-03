import 'package:floor/floor.dart';

class EntidadeBase {
  EntidadeBase(this.codigo, this.qdoFoiCriado);

  @PrimaryKey(autoGenerate: true)
  final int? codigo;

  final String qdoFoiCriado;
}
