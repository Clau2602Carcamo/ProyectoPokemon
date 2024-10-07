import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart'; // Importa las pantallas que crearás
import 'screens/pokemon_list_screen.dart';
import 'screens/pokemon_detail_screen.dart';
import 'screens/pokemon_moves_screen.dart';

void main() => runApp(PokeApp());

class PokeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/pokemonList': (context) => PokemonListScreen(),
        '/pokemonDetail': (context) => PokemonDetailScreen(),
        '/pokemonMoves': (context) => PokemonMovesScreen(),
      },
    );
  }
}
