import '../models/todo_model.dart';

class NetworkService {
  static const baseUrl = "https://jsonplaceholder.typicode.com/Todos";

  Future<List<TodoModel>> getAllTodos() async {
    List<TodoModel> result = [];

    return result;
  }
}