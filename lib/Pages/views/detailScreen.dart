import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,


      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width - (40),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3, 3),
                        blurRadius: 5
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage(
                          './asset/test1.png'
                      )
                  )
              ),
            ),
            SizedBox(height: 30,),
            Padding(
                padding: const EdgeInsets.only(left:10),
                child: Text(
                  'Quick Morning Run',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600
                  ),
                )
            ),
            ListTile(
              leading: Icon(
                Icons.timer_outlined,
              ),
              title: Text(
                '15 min, beginner',
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.sports_gymnastics,
              ),
              title: Text(
                'Mobility, Core Strenght',
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.pan_tool,
              ),
              title: Text(
                'Yoga Block',
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.music_note,
              ),
              title: Text(
                'None',
              ),
            ),
            Container(
              height: 45,
              width: 350,
              child: Center(
                child: Text(
                  'Start Workout',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(50)
              ),

            )

          ],
        )
      ),
    );
  }
}
