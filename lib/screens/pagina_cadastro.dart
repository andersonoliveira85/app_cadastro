import 'package:app_cadastro/database/database.dart';
import 'package:app_cadastro/model/atividade.dart';
import 'package:app_cadastro/screens/pagina_add_contato.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaginaCadastro extends StatefulWidget {
  const PaginaCadastro({Key? key, required this.bd}) : super(key: key);
  final BancoDeDadosApp bd;

  @override
  State<PaginaCadastro> createState() => _PaginaCadastroState();
}

class _PaginaCadastroState extends State<PaginaCadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: () async {
          var resultado = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return PaginaAddContato(bd: widget.bd);
              },
            ),
          );
          if (resultado) {
            setState(() {});
          }
        },
        child: Icon(Icons.add),
      ),
      appBar: new AppBar(
        title: Text('App Cadastros'),
      ),
      body: FutureBuilder<List<Atividade>>(
        future: widget.bd.atividadeRepositoryDAO.getAll(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        title: Text(snapshot.data![index].nome),
                        subtitle: Text(snapshot.data![index].telefone),
                      ),
                    );
                  },
                )
              : Center(child: Text("Sem contatos agendados!!"));
        },
      ),
    );
  }
}
