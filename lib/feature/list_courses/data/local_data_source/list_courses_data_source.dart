import 'package:cources_app/core/local_database/data_base.dart';

abstract class ListCoursesDataSource {
  Future<List<Course>> getListCourses();
  Future<void> deleteCourse(int id);
}