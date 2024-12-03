import 'package:cources_app/core/local_database/data_base.dart';
import 'package:cources_app/feature/list_courses/domain/entity/courses_entity.dart';

abstract class AddingCourseDataSource {
  Future<void> addCourse(CoursesEntity course);

  Future<Course> selectCourse(int id);

  Future<void> updateCourse(CoursesEntity course);
}
