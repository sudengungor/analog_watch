import 'package:dio/dio.dart';
import 'package:rickandmorty/models/characters_model.dart';

class ApiService {
  final _dio = Dio(
    BaseOptions(
      baseUrl: "https://rickandmortyapi.com/api",
    ),
  );

  Future<CharactersModel> getCharacters() async {
    try {
      final responce = await _dio.get("/character");
      return CharactersModel.fromJson(responce.data);
    } catch(e){
        rethrow;
    }
  }
}

