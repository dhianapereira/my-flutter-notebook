import 'package:flutter/material.dart';
import 'package:pokedex/common/models/pokemon.dart';

class HomePage extends StatelessWidget {
  final List<Pokemon> list;

  const HomePage({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(list[index].name));
        },
      ),
    );
  }
}
