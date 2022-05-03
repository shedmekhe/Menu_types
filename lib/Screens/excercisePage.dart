// import 'dart:html';

import 'package:flutter/material.dart';

class ExcercisePage extends StatefulWidget {
  const ExcercisePage({Key? key}) : super(key: key);

  @override
  State<ExcercisePage> createState() => _ExcercisePageState();
}

class _ExcercisePageState extends State<ExcercisePage> {
  final items=['Cardio','Running','Walking','Push-ups','Pull-ups','Crunches'];

  String? value;
  @override
  Widget build(BuildContext context) =>
      Scaffold(
        backgroundColor: Colors.cyan,
        body:Center(
          child: Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(color:Colors.black,width: 2),
            ),
            child: DropdownButton<String>
              (
              iconSize: 30,
              dropdownColor: Colors.black,
              isExpanded: true,
              hint: Text("Excercise",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
              value: value,
              items: items.map(buildMenuItem).toList(),
             onChanged: (value)=>setState(()=>this.value =value),
             ),
          ),
        ),
    );
    DropdownMenuItem<String>buildMenuItem(String item)=>DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),
        )
    );
  }

