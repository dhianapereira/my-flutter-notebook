import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pokedex/common/consts/api.consts.dart';
import 'package:pokedex/common/error/failure.dart';
import 'package:pokedex/common/models/pokemon.dart';

abstract class IPokemonRepository {
  Future<List<Pokemon>> getAllPokemons();
}

class PokemonRepository implements IPokemonRepository {
  final Dio dio;

  PokemonRepository({required this.dio});

  @override
  Future<List<Pokemon>> getAllPokemons() async {
    try {
      final response = await dio.get(ApiConsts.allPokemonsURL);

      final json = jsonDecode(response.data) as Map<String, dynamic>;

      final list = json['pokemon'] as List;

      return list.map((element) => Pokemon.fromMap(element)).toList();
    } catch (e) {
      throw Failure(message: "Não foi possível carregar os dados!");
    }
  }
}
