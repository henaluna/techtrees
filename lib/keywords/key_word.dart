import 'package:flutter/material.dart';

class Mykeyword extends StatefulWidget {
  const Mykeyword({Key? key}) : super(key: key);

  @override
  State<Mykeyword> createState() => _MykeywordState();
}

class _MykeywordState extends State<Mykeyword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromRGBO(229, 255, 247, 1),
        border: Border.all(color: Color.fromRGBO(101, 212, 179, 1), width: 1),
      ),
      margin: const EdgeInsets.all(2.0),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text("키워드 1"),
      ),
    );
  }
}
