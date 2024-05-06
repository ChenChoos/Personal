import 'package:flutter/material.dart';
class EnduranceModel{
  String name;
  String time;
  String muscleType;
  String exerciseName;
  String iconPath;
  Color boxColor;

  EnduranceModel({
    required this.name,
    required this.time,
    required this.iconPath,
    required this.muscleType,
    required this.exerciseName,
    required this.boxColor,
  });
  static List<EnduranceModel> getCategories(){
    List<EnduranceModel> categories = [];

    categories.add(
        EnduranceModel(
            name: 'Coming Soon',
            time: '15',
            muscleType: 'Mobility',
            exerciseName: 'Yoga Block',
            boxColor: Color(0xff9DCEFF),
            iconPath: './asset/test1.png'

        )
    );

    categories.add(
        EnduranceModel(
            name: 'Coming Soon',
            time: '69',
            muscleType: 'gun',
            exerciseName: 'rainbow six',
            boxColor: Color(0xffEEA4CE),
            iconPath: './asset/test2.jpg'
        )
    );

    categories.add(
        EnduranceModel(
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

