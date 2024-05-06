import 'package:flutter/material.dart';
class BalanceModel{
  String name;
  String time;
  String muscleType;
  String exerciseName;
  String iconPath;
  Color boxColor;

  BalanceModel({
    required this.name,
    required this.time,
    required this.iconPath,
    required this.muscleType,
    required this.exerciseName,
    required this.boxColor,
  });
  static List<BalanceModel> getCategories(){
    List<BalanceModel> categories = [];

    categories.add(
        BalanceModel(
            name: 'Coming Soon',
            time: '15',
            muscleType: 'Coming Soon',
            exerciseName: 'Yoga Block',
            boxColor: Color(0xff9DCEFF),
            iconPath: './asset/test1.png'

        )
    );

    categories.add(
        BalanceModel(
            name: 'Coming Soon',
            time: '69',
            muscleType: 'gun',
            exerciseName: 'rainbow six',
            boxColor: Color(0xffEEA4CE),
            iconPath: './asset/test2.jpg'
        )
    );

    categories.add(
        BalanceModel(
            name: 'coming soon',
            time: '69',
            muscleType: 'gun',
            exerciseName: 'rainbow six',
            boxColor: Color(0xffEEA4CE),
            iconPath: './asset/test2.jpg'
        )
    );


    return categories;
  }
}

