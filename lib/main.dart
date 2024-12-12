import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/views/app_main_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
      apiKey: "AIzaSyAWgRtuj_3vv9c9g6KiLfbzTvMgSFwGfx0",
      appId: "1:585027287959:web:9b2d3276b7b853124e62d2",
      messagingSenderId: "585027287959",
      projectId: "recipe-app-be940"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const AppMainScreen(),
    );
  }
} // This trailing comma makes auto-formatting nicer for build methods.
