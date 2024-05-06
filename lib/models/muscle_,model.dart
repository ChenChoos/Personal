import 'package:flutter/material.dart';
class MuscleModel{
  String name;
  String time;
  String muscleType;
  String exerciseName;
  String iconPath;
  Color boxColor;

  MuscleModel({
    required this.name,
    required this.time,
    required this.iconPath,
    required this.muscleType,
    required this.exerciseName,
    required this.boxColor,
  });
  static List<MuscleModel> getCategories(){
    List<MuscleModel> categories = [];

    categories.add(
        MuscleModel(
            name: 'Light Lifting Sessions',
            time: '15',
            muscleType: 'Coming Soon',
            exerciseName: 'Yoga Block',
            boxColor: Color(0xff9DCEFF),
            iconPath: './asset/test1.png'

        )
    );

    categories.add(
        MuscleModel(
            name: 'Coming Soon',
            time: '69',
            muscleType: 'gun',
            exerciseName: 'rainbow six',
            boxColor: Color(0xffEEA4CE),
            iconPath: './asset/test2.jpg'
        )
    );

    categories.add(
        MuscleModel(
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

