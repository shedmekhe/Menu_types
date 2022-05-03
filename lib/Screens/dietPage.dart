import 'package:flutter/material.dart';

class DietPage extends StatefulWidget {
  const DietPage({Key? key}) : super(key: key);

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  final items=['Idli','Dosa','Upma','Poha','Vada','Sheera'];

  String? value;
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
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
            hint: Text("Diet",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black)),
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
