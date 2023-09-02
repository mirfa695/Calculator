import 'package:flutter/material.dart';

// ignore: camel_case_types
class textField extends StatelessWidget {
  const textField({
    required this.text,
    required this.con,
    Key? key}) : super(key: key);
  final String text;
  final TextEditingController con;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0,left: 20),
      child: TextField(
        controller: con,
        onTap: (){},
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)
          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)
          ),
          hintText: text,




        ),
      ),
    );
  }
}

