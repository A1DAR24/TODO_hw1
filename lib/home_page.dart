import 'package:flutter/material.dart';
import 'package:todo_1/add_page.dart';
import 'package:todo_1/todo_list.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List   toDoList = [
    ['сделать дз', false, ],
    ['сделать todo лист', false]
  ];

  void checkBoxChanged(int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void navigateToAddPage(BuildContext context) async {
    final result = await Navigator.of(context).push(MaterialPageRoute(builder: (_) => AddPage()));

    if (result != null && result.isNotEmpty) {
    setState(() {
      toDoList.add([result, false]);
    });
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Title'), centerTitle: true),

      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (BuildContext context, index) {
          return ToDoList(
            title: toDoList[index][0],
            id: DateTime.now().millisecondsSinceEpoch.toString(),
            isFinished: toDoList[index][1],
            onChanged: (value) => checkBoxChanged(index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigateToAddPage(context),
        backgroundColor: Colors.red,
        tooltip: 'Create ToDo',
        child: const Icon(Icons.add, color: Colors.white,),
        ),
    );
  }
}
