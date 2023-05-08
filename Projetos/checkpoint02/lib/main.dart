
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactsPage(),
    );
  }
}

class ContactsPage extends StatefulWidget {
  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  int contador = 0;
  final contacts = [
    Contato(nomeCompleto: "Rogerio Ceni", email: 'Rogerio_Ceni@gmail.com', favorito: false),
    Contato(nomeCompleto: "Alice", email: 'Alice@rhyta.com', favorito: false),
    Contato(nomeCompleto: "Douglas", email: 'Douglas@dayrep.com', favorito: false),
    Contato(nomeCompleto: "Pintado", email: 'Pintado@dayrep.com', favorito: false),
    Contato(nomeCompleto: "Palinha", email: 'Palinha@dayrep.com', favorito: false),
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        title:  Text('Contatos Favoritos $contador'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: 
              NetworkImage('https://i.pravatar.cc/150?img=$index'),
              ),
            title: Text(contacts[index].nomeCompleto),
            subtitle: Text(contacts[index].email),
            trailing: IconButton (
              icon:  contacts[index].favorito == true ?  Icon(Icons.favorite) : Icon(Icons.favorite_border),
              onPressed: (){
                setState(() {
                  if (contacts[index].favorito) {
                      contacts[index].favorito = false;
                      contador--;
                  }    else{
                      contacts[index].favorito = true;
                      contador++;
                  }
                },
                );

              },
               ),
          );
        },
      ),
    );
  }
}

class Contato {
  String nomeCompleto;
  String email;
  bool favorito;

  Contato({required this.nomeCompleto, required this.email, required this.favorito});
}

