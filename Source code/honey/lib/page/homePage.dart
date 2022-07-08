import 'dart:convert';

import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/taskModel.dart';
import 'Home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 1;
  List<TabItem> tabItems = List.of([
    TabItem(Icons.home, "Home", Colors.white,
        labelStyle: TextStyle(color: Colors.white)),
    TabItem(Icons.home, "Search", Colors.white,
        labelStyle: TextStyle(color: Colors.white)),
    TabItem(Icons.layers, "Reports", Colors.white,
        labelStyle: TextStyle(color: Colors.white)),
    TabItem(Icons.notifications, "Notifications", Colors.white,
        labelStyle: TextStyle(color: Colors.white)),
  ]);
  CircularBottomNavigationController? _navigationController;
  List screen = [
    Center(
      child: Text('2'),
    ),
    Home(),
    Center(
      child: Text('3'),
    ),
    Center(
      child: Text('4'),
    ),
  ];
  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(currentindex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screen[currentindex],
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.only(topLeft: Radius.elliptical(50, 10))),
        child: CircularBottomNavigation(
          barBackgroundColor: Color(0xff0B0B45),
          selectedPos: currentindex,
          controller: _navigationController,
          normalIconColor: Colors.white,
          selectedIconColor: Color(0xff0B0B45),
          tabItems,
          selectedCallback: (selectedPos) {
            setState(() {
              currentindex = selectedPos!;
            });
          },
        ),
      ),
    );
  }

  AddJsonToFirebase() async {
    var jasonText = await rootBundle.loadString('assets/json/task.json');

    List data = jsonDecode(jasonText);
    List<TaskModle> tasks = <TaskModle>[];
    for (int i = 0; i < data.length; i++) {
      TaskModle taskModel = TaskModle(
        location:
            (data[i]["location"] != null) ? data[i]["location"] : "Kitchen",
        trade_type:
            (data[i]["trade_type"] != null) ? data[i]["trade_type"] : "DIY",
        title: (data[i]["title"] != null) ? data[i]["title"] : "",
        desc_main: (data[i]["desc_main"] != null) ? data[i]["desc_main"] : "",
        interior_exterior: (data[i]["interior_exterior"] != null)
            ? data[i]["interior_exterior"]
            : "Interior",
        reminder_recurrence: (data[i]["reminder_recurrence"] != null)
            ? data[i]["reminder_recurrence"]
            : "Quarterly",
        win: (data[i]["win"] != null) ? data[i]["win"] == "x" : false,
        spr: (data[i]["spr"] != null) ? data[i]["spr"] == "x" : false,
        sum: (data[i]["sum"] != null) ? data[i]["sum"] == "x" : false,
        fal: (data[i]["fal"] != null) ? data[i]["fal"] == "x" : false,
        jan: (data[i]["jan"] != null) ? data[i]["jan"] == "x" : false,
        feb: (data[i]["feb"] != null) ? data[i]["feb"] == "x" : false,
        mar: (data[i]["mar"] != null) ? data[i]["mar"] == "x" : false,
        apr: (data[i]["apr"] != null) ? data[i]["apr"] == "x" : false,
        may: (data[i]["may"] != null) ? data[i]["may"] == "x" : false,
        jun: (data[i]["jun"] != null) ? data[i]["jun"] == "x" : false,
        jul: (data[i]["jul"] != null) ? data[i]["jul"] == "x" : false,
        aug: (data[i]["aug"] != null) ? data[i]["aug"] == "x" : false,
        sep: (data[i]["sep"] != null) ? data[i]["sep"] == "x" : false,
        oct: (data[i]["oct"] != null) ? data[i]["oct"] == "x" : false,
        nov: (data[i]["nov"] != null) ? data[i]["nov"] == "x" : false,
        dec: (data[i]["dec"] != null) ? data[i]["dec"] == "x" : false,
        category:
            (data[i]["category"] != null) ? data[i]["category"] : "health",
        author: (data[i]["author"] != null) ? data[i]["author"] : "Chris",
        createdDate: DateTime.now(),
        cost_savings: 150,
      );
      tasks.add(taskModel);
    }
  }
}
