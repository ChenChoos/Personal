import 'package:flutter/material.dart';
import 'package:program_page/Pages/ProgramPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the rgioot of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WorkoutPage(),

    );
  }
}
