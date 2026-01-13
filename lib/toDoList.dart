import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({
    super.key,
    required this.todoName,
    required this.todoDone,
    this.onChanged,
  });

  final String todoName;
  final bool todoDone;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 15, left: 15, bottom: 0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(215, 247, 242, 1),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 4, offset: Offset(0, 5))]
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Checkbox(
                value: todoDone,
                checkColor: Colors.white,
                activeColor: Colors.blue,
                onChanged: onChanged,
              ),
              Flexible(
                child: Text(
                  todoName,
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
