import 'package:flutter/material.dart';

class ToDoList extends StatelessWidget {
  
  final String title;
  final bool isFinished;
  final String date = '16.01.2026';
  final String id ;
  final Function(bool?)? onChanged;
  
  ToDoList({
    super.key,
    this.onChanged, required this.title, required this.id, required this.isFinished,
  });



  @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 20, right: 15, left: 15, bottom: 0),
    child: Container(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(215, 247, 242, 1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 4,
            offset: const Offset(0, 5),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            Row(
              children: [
                Checkbox(
                  value: isFinished,
                  checkColor: Colors.white,
                  activeColor: Colors.blue,
                  onChanged: onChanged,
                ),
                Flexible(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                date,
                style: TextStyle(
                  color: Colors.grey[700], 
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}