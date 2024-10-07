import 'package:flutter/material.dart';

class PokemonMovesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<dynamic> moves =
        ModalRoute.of(context)!.settings.arguments as List<dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Movimientos'),
        backgroundColor: Colors.amber, 
      ),
      body: ListView.builder(
        itemCount: moves.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber[200], 
              child: Text(
                (index + 1).toString(), 
                style: TextStyle(color: Colors.black), 
              ),
            ),
            title: Text(
              moves[index]['move']['name'], 
            ),
          );
        },
      ),
    );
  }
}
