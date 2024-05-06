import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:program_page/models/category_model.dart';

class SetStateDemo extends StatefulWidget {
  const SetStateDemo({Key? key}) : super(key: key);
  @override
  State<SetStateDemo> createState() => _SetStateDemoState();
}
class _SetStateDemoState extends State<SetStateDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {});

          },
          child: const Text('ReBuild'),
        ),
      ),
    );
  }
}
