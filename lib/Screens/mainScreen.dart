import 'package:flutter/material.dart';
import 'dietPage.dart';
import 'excercisePage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late TabController  _controller;
  @override
  void initState()
  {
    super.initState();
    _controller=TabController(length:2, vsync: this);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Options"),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.more_vert)),
        ],
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              text: "DIET",
            ),
            Tab(
              text: "Excercise",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          DietPage(),
          ExcercisePage(),
        ],
      ),
    );
  }
}
