import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Checkpoint(),
    ),
  );
}

class Checkpoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkpoint01'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('../imagens/caneta.png'),),
            accountName: Text('caio'),
            accountEmail: Text('caio@gmail.com'),
          ),
          ListTile(
            title: Text('Primary'),
            leading: Icon(Icons.facebook),
          ),
          ListTile(
            title: Text('SOCIAL'),
            leading: Icon(Icons.telegram),
          ),
          ListTile(
            title:  Text('Promotions'),
            leading: Icon(Icons.email),
          ),

        ]
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Caio Favaro',
            style: TextStyle(
              color: Colors.black,
              fontSize: 50,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook),
              Icon(Icons.telegram),
              Icon(Icons.email),
            ],
          )
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'Add',
        onPressed: null,
        child: Icon(Icons.add),
      ),
    );
  }
}
