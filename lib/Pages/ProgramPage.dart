import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:program_page/models/category_model.dart';
import 'package:program_page/models/endurance_model.dart';
import 'package:program_page/models/balance_model.dart';
import 'package:program_page/models/muscle_,model.dart';
import 'package:program_page/Pages/views/detailScreen.dart';


class WorkoutPage extends StatefulWidget {
  WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  List<CategoryModel> categories1 = [];
  List<MuscleModel> categories2 = [];
  List<BalanceModel> categories3 = [];
  List<EnduranceModel> categories4 = [];
  void _getCategories(){
    categories1 = CategoryModel.getCategories();
    categories2 = MuscleModel.getCategories();
    categories3 = BalanceModel.getCategories();
    categories4 = EnduranceModel.getCategories();
  }

  //
  int _currentIndex= 0;
  List<Widget> widgetList = [
    Text('Home', style: TextStyle(fontSize: 40)),
    Text('Program', style: TextStyle(fontSize: 40)),
    Text('Profile', style: TextStyle(fontSize: 40)),
  ];

  @override
  Widget build(BuildContext context) {
    _getCategories();
    return Scaffold(
      body: ListView(
        children: [

          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Padding(
               padding: const EdgeInsets.only(left:10),
                 child: Text(
                   'Cardio',
                   style: TextStyle(
                       color: Colors.black,
                       fontSize: 20,
                       fontWeight: FontWeight.w600
                   ),
                 )
             ),

              SizedBox(height: 15,),
              Container(
                height: 150,

                child: ListView.separated(

                    itemCount: categories1.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20
                    ),
                    separatorBuilder: (context, index) => SizedBox(width: 25,),
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100,
                        decoration: BoxDecoration(
                         color: categories1[index].boxColor.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                     builder: (BuildContext context) => const DetailsScreen(),
                                  ),
                                );
                              },
                           child:  Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),

                                child: Image.asset(categories1[index].iconPath)
                              ),
                            ),
                            ),
                            Text(
                              textAlign: TextAlign.center,
                          categories1[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),


                        ],
                       )

                      );

                    }
                ),

              ),

            ],
          ),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left:10),
                  child: Text(
                    'Muscle Building',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),
                  )
              ),
              SizedBox(height: 15,),
              Container(
                height: 150,

                child: ListView.separated(
                    itemCount: categories2.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    separatorBuilder: (context, index) => SizedBox(width: 25,),
                    itemBuilder: (context, index) {
                      return Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color: categories2[index].boxColor.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                                  child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(categories2[index].iconPath)
                                  )
                              ),

                              Text(
                                textAlign: TextAlign.center,
                                categories2[index].name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                            ],
                          )
                      );

                    }
                ),
              )
            ],
          ),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left:10),
                  child: Text(
                    'Balance Training',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),
                  )
              ),
              SizedBox(height: 15,),
              Container(
                height: 150,

                child: ListView.separated(
                    itemCount: categories3.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    separatorBuilder: (context, index) => SizedBox(width: 25,),
                    itemBuilder: (context, index) {
                      return Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color: categories3[index].boxColor.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                              ),

                              Text(
                                textAlign: TextAlign.center,
                                categories3[index].name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                            ],
                          )
                      );

                    }
                ),
              )
            ],
          ),
          SizedBox(height: 30),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left:10),
                  child: Text(
                    'Endurance Training',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),
                  )
              ),
              SizedBox(height: 15,),
              Container(
                height: 150,

                child: ListView.separated(
                    itemCount: categories4.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(
                        left: 20,
                        right: 20
                    ),
                    separatorBuilder: (context, index) => SizedBox(width: 25,),
                    itemBuilder: (context, index) {
                      return Container(
                          width: 100,
                          decoration: BoxDecoration(
                              color: categories4[index].boxColor.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle
                                ),
                              ),

                              Text(
                                textAlign: TextAlign.center,
                                categories4[index].name,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,

                                ),
                              ),
                            ],
                          )
                      );

                    }
                ),
              )
            ],
          )
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
          // showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.cyan,
          type: BottomNavigationBarType.fixed,
          onTap: (int index){
            setState(() {
              _currentIndex = index;
            });

          },
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: 'Menu',
                icon: Icon(Icons.home),
                backgroundColor: Colors.blue

            ),
            BottomNavigationBarItem(
                label: 'Program',
                icon: Icon(Icons.menu),
                backgroundColor: Colors.lightBlueAccent
            ),
            BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(Icons.person),
                backgroundColor: Colors.indigo

            ),
          ],



      ),
    );
  }
}
