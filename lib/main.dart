import 'package:app_cadastro/database/database.dart';
import 'package:app_cadastro/screens/pagina_cadastro.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
    bd: await $FloorBancoDeDadosApp
        .databaseBuilder('app_database_at.db')
        .build(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.bd}) : super(key: key);
  final BancoDeDadosApp bd;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Cadastro',
      home: PaginaCadastro(bd: bd),
    );
  }
}
