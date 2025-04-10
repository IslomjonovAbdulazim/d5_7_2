import '../models/todo_model.dart';
import '../service/network_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  List<TodoModel> todos = [];

  @override
  void initState() {
    load();
    super.initState();
  }

  void load() async {
    isLoading = true;
    setState(() {});
    todos = await NetworkService().getAllTodos();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
