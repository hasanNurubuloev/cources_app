import 'package:cources_app/feature/list_courses/domain/entity/courses_entity.dart';

abstract class AddingCourseDataSource {
  Future<void> addCourse(CoursesEntity course);
}