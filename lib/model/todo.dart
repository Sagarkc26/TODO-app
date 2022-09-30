import 'package:flutter/cupertino.dart';

class ToDO {
  String? id;
  String? todoText;
  bool? isDone;

  ToDO({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDO> todoList() {
    return [
      ToDO(id: '01', todoText: 'Morning Exercise', isDone: true),
      ToDO(id: '02', todoText: 'Buy Groceries', isDone: true),
      ToDO(id: '03', todoText: 'Check Emails'),
      ToDO(id: '04', todoText: 'Coding', isDone: true),
      ToDO(id: '05', todoText: 'Work on NodeJS'),
      ToDO(id: '06', todoText: 'Dinner with Family'),
    ];
  }
}
