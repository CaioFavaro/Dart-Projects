
import 'package:flutter/material.dart';
 

void main(){
  runApp(
    MaterialApp(
      home: MyCard(),
    ),
  );
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.teal,
    body: SafeArea(
      child: Column(children: [
        CircleAvatar(
          backgroundImage: AssetImage('images/caneta.PNG') ,
          radius: 80,
        ),
        Text(
          'Caneta Azul', 
          style: TextStyle(
          fontFamily: "Pacifico",
          color: Colors.white,
          fontSize: 40,
        ),
        ),
        Text(
          'AZUL CANETA', 
          style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        ),
        Card(
          margin: EdgeInsets.symmetric(
            horizontal: 10, vertical: 20,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(Icons.phone),
                SizedBox(width: 20,),
                Text('+55 11 34341232',
                 style:
                TextStyle(
                  color: Colors.teal,
                )
                )
              ],
            ),
          ),
        ),
        Card(
          margin: EdgeInsets.symmetric(
            horizontal: 10, vertical: 5,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 20,),
                Text('CanetaAzul@gmail.com',
                 style:
                TextStyle(
                  color: Colors.teal,
                )
                )
              ],
            ),
          ),
        )
      ],
    ),
    ),
    );
  }
}