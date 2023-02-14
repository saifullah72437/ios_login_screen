import 'package:flutter/material.dart';

class EmailForm extends StatelessWidget {
  String hintText;
   EmailForm({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6)
      ),
      child: TextField(

        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey)
        ),

      ),
    );
  }
}
