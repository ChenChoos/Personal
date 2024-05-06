import 'package:flutter/material.dart';
class CategoryModel{
  String name;
  String time;
  String muscleType;
  String exerciseName;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.time,
    required this.iconPath,
    required this.muscleType,
    required this.exerciseName,
    required this.boxColor,
  });
  static List<CategoryModel> getCategories(){
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: 'Quick Morning Run',
        time: '15',
        muscleType: 'Mobility',
        exerciseName: 'Yoga Block',
        boxColor: Color(0xff9DCEFF),
        iconPath: './asset/test1.png'

      )
    );

    categories.add(
        CategoryModel(
            name: 'Intense sprinting',
            time: '69',
            muscleType: 'gun',
            exerciseName: 'rainbow six',
            boxColor: Color(0xffEEA4CE),
            iconPath: './asset/test2.jpg'
        )
    );

    categories.add(
        CategoryModel(
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

