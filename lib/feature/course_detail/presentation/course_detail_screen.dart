import 'package:auto_route/annotations.dart';
import 'package:cources_app/feature/list_courses/domain/entity/courses_entity.dart';
import 'package:cources_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CourseDetailScreen extends StatelessWidget {
  final CoursesEntity coursesModel;

  const CourseDetailScreen({required this.coursesModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                coursesModel.title,
                style: const TextStyle(
                  fontFamily: FontFamily.alegaya,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'assets/images/image2.jpg',
                width: 332,
                height: 296,
              ),
              Text(
                coursesModel.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.blueGrey,
                  fontFamily: FontFamily.alegaya,
                ),
              ),
              const SizedBox(height: 34),
              Row(
                children: [
                  const Text(
                    'Длительность курса',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        vertical: 4,
                      ),
                      child: Text(
                        '${coursesModel.duration} месяца(-ев)',
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 24),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(),
                    child: Text(
                      'Купить - ${coursesModel.price}₸',
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
