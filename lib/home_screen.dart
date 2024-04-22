// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grid_view_task/custom_container.dart';
import 'package:grid_view_task/dummy_db.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 25,
        ),
        title: Text("GridView()",
            style: TextStyle(
                color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.bold)),
      ),
      body: GridView.builder(
        itemCount: DummyDb.gridDetails.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5),
          itemBuilder: (context, index) => CustomContainer(
                image: DummyDb.gridDetails[index]["image"],
                text: DummyDb.gridDetails[index]["text"],
              )),
    );
  }
}
