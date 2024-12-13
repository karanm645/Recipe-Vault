import 'package:flutter/material.dart';
import 'package:recipe_app/utils/constraints.dart';

class MyAppHomeScreen extends StatefulWidget {
  const MyAppHomeScreen({super.key});

  @override
  State<MyAppHomeScreen> createState() => _MyAppHomeScreenState();
}

class _MyAppHomeScreenState extends State<MyAppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kbackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(children: [
                  Row(
                    children: [
                      Text(
                        "What are you\ncooking today?",
                        style: TextStyle(
                        fontSize: 32,
                        fontWeight:
                        FontWeight.bold,
                        height: 1),
                      )
                  ],)
                ],),
              ),
      ],),),)
    );
  }
}
