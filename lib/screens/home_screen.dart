import 'package:flutter/material.dart';
import 'package:submission_beginner/colors.dart';
import 'package:submission_beginner/screens/detail_course_screen.dart';

import '../courses.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SafeArea(
              child: Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 16, left: 16),
                child: const CircleAvatar(
                  backgroundImage:
                      AssetImage('images/dicoding_logo_circle.png'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              width: double.infinity,
              child: Image.asset('images/homepage-hero.png'),
            ),
            Column(
              children: const [
                Text(
                  'Bangun Karirmu Sebagai Developer Profesional',
                  style: TextStyle(
                    color: dicodingColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Mulai belajar terarah dengan learning path',
                  style: TextStyle(color: dicodingColor),
                )
              ],
            ),
            SizedBox(
                width: double.infinity, child: DisplayCourses())
          ],
        ),
      ),
    );
  }
}

class DisplayCourses extends StatelessWidget {
  DisplayCourses({Key? key}) : super(key: key);
  final _courses = generateCourses();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: InkWell(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(_courses[index].image)),
                  ),
                  Expanded(
                    flex: 2,
                      child: Text(
                          _courses[index].title,
                        style: const TextStyle(color: dicodingColor),
                      )
                  )
                ],
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailCourseScreen(course: _courses[index]);
              }));
            },
          ),
        );
      },
      itemCount: _courses.length,
    );
    // return Container();
  }
}
