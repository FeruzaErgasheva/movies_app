import 'package:flutter/material.dart';

class SearchGenerator extends StatelessWidget {
  String text;
  SearchGenerator({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 13, 29, 117).withOpacity(0.5)),
      child: Row(
        children: [
          Icon(
            Icons.access_time,
            color: Colors.indigo,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 15,
                color: Colors.indigo,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
