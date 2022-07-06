import 'package:flutter/material.dart';
import 'package:submission_beginner/colors.dart';

import '../courses.dart';

class DetailCourseScreen extends StatefulWidget {
  const DetailCourseScreen({Key? key, required this.course}) : super(key: key);
  final Course course;

  @override
  State<DetailCourseScreen> createState() => _DetailCourseScreenState();
}

class _DetailCourseScreenState extends State<DetailCourseScreen> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Back button widget
              SafeArea(
                child: Container(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: dicodingColor,
                        child: IconButton(
                            icon: const Icon(Icons.arrow_back,
                                color: Colors.white),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      IconButton(
                          icon: Icon(_isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border),
                          onPressed: () {
                            setState(() {
                              _isFavorite = !_isFavorite;
                            });
                          })
                    ],
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset(widget.course.image)),
              ),
              const SizedBox(height: 8),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Text(
                        widget.course.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: dicodingColor),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.course.content,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: dicodingColor),
                      )
                    ],
                  ),
                ),
              ),
              ShowSteppingCourses(stepCourses: widget.course.stepCourses)
            ],
          ),
        ));
  }
}

class ShowSteppingCourses extends StatelessWidget {
  final List<StepCourse> stepCourses;

  const ShowSteppingCourses({Key? key, required this.stepCourses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(stepCourses.length, (index) {
          var stepCourse = stepCourses[index];
          var step = index+1;
          return Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Text(step.toString()),
                  const SizedBox(height: 8),
                  Card(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 8, top: 8),
                          child: Row(
                            children: [
                              const Icon(Icons.trending_up, color: dicodingColor),
                              const SizedBox(width: 8),
                              Text(
                                  'Langkah ${stepCourse.step}',
                                  style: const TextStyle(color: dicodingColor),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 16, left: 8, right: 8),
                          child: Text(
                              stepCourse.title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: dicodingColor,
                                fontWeight: FontWeight.bold
                              ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 16, left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.access_time, color: Colors.blue),
                                  const SizedBox(width: 4),
                                  Text('${stepCourse.estimatedHours} Jam', style: const TextStyle(color: dicodingColor))
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.star, color: Colors.yellow),
                                  const SizedBox(width: 4),
                                  Text(stepCourse.rate.toString(), style: const TextStyle(color: dicodingColor))
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.timeline, color: Colors.deepPurple),
                                  const SizedBox(width: 4),
                                  Text(stepCourse.level, style: const TextStyle(color: dicodingColor))
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.collections_bookmark, color: dicodingColor),
                                  const SizedBox(width: 4),
                                  Text('${stepCourse.moduleCount} Modul', style: const TextStyle(color: dicodingColor))
                                ],
                              ),
                              const SizedBox(width: 16),
                              Row(
                                children: [
                                  const Icon(Icons.access_time, color: Colors.blue),
                                  const SizedBox(width: 4),
                                  Text('${stepCourse.estimatedHours} Jam', style: const TextStyle(color: dicodingColor))
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
          );
        }).toList());
  }
}
