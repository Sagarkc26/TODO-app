import 'package:flutter/material.dart';
import 'package:todo_app/widget/ToDO_item.dart';
import 'package:todo_app/widget/searchbar.dart';

import 'model/todo.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final todoList = ToDoitem.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.menu),
            Icon(Icons.person),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const Searchbox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40, bottom: 20),
                    child: const Text(
                      "All ToDOs",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ),
                  for (ToDo todo in ToDoitem) const ToDoitem(),
                  const ToDoitem(),
                  const ToDoitem(),
                  const ToDoitem(),
                  const ToDoitem(),
                  const ToDoitem(),
                  const ToDoitem(),
                  const ToDoitem(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
