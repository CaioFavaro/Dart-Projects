import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
    final List<String> items;

    const MyApp ({super.key, required this.items});


    @override
    Widget build(BuildContext context){
      const title = 'Long List';
      return MaterialApp(
          title: title,
           home: const ListaContatos(),
    );
    }
}

class ListaContatos extends StatefulWidget {
  const ListaContatos ({Key? key}) : super (key: key);


@override 
State<ListaContatos> createState() => _ListaContatosState();
}

class _ListaContatosState extends State<ListaContatos>{
  List<Contato> contatos = [
    Contato("caio", "caio@gmail.com"),
    Contato("diego" , "diego@gmail.com"),
    Contato("Antares", "antares@gmail.com"),
  ];


  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listagem de contatos'),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              child: Text(contatos[index].nomeCompleto[0]
              ),           
            ),
            title: Text(contatos[index].nomeCompleto),
            subtitle: Text(contatos[index].email),
            );
        },
        ),
    );
  }
}

class Contato {
  String nomeCompleto;
  String email;

  Contato(this.nomeCompleto, this.email); 

}
