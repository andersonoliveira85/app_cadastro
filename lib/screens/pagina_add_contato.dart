import 'package:app_cadastro/database/database.dart';
import 'package:app_cadastro/model/atividade.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaginaAddContato extends StatelessWidget {
  PaginaAddContato({Key? key, required this.bd}) : super(key: key);
  final BancoDeDadosApp bd;

  final _nomeController = new TextEditingController();
  final _telefoneController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          if (_nomeController.text.isNotEmpty &&
              _telefoneController.text.isNotEmpty) {
            bd.atividadeRepositoryDAO.insertItem(new Atividade(
              nome: _nomeController.text,
              telefone: _telefoneController.text,
              qdoFoiCriado: DateTime.now().toUtc().toString(),
            ));
          }
          Navigator.pop(context, true);
        },
        child: Icon(Icons.save),
      ),
      appBar: new AppBar(
        title: Text('Inserir Contato'),
      ),
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new TextField(
              controller: _nomeController,
              decoration: InputDecoration(hintText: "Digite o Nome:"),
            ),
            new TextField(
              controller: _telefoneController,
              decoration: InputDecoration(hintText: "Digite o telefone:"),
            )
          ],
        ),
      ),
    );
  }
}
