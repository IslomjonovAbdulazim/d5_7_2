import 'dart:convert';

import '../models/todo_model.dart';
import 'package:http/http.dart' as http;

class NetworkService {
  static const baseUrl = "https://jsonplaceholder.typicode.com/Todos";

  Future<List<TodoModel>> getAllTodos() async {
    List<TodoModel> result = [];
    Uri uri = Uri.parse(baseUrl);
    final response = await http.get(uri);

    if (response.statusCode == 200) {
      List listJson = List.from(jsonDecode(response.body));
      result = listJson.map((json) => TodoModel.fromJson(json)).toList();
    }

    return result;
  }
}