import 'package:flutter/material.dart';

class ToDo extends StatelessWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: Colors.blue,
        ),
        title: const Text(
          "Wakeup",
          style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              decoration: TextDecoration.lineThrough),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 12),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.red,
          ),
          child: Center(
            child: IconButton(
              color: Colors.white,
              onPressed: () {
                print("Clicked on delete icon");
              },
              icon: const Icon(Icons.delete),
            ),
          ),
        ),
      ),
    );
  }
}
