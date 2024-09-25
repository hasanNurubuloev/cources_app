import 'package:cources_app/core/network/entity/failure.dart';
import 'package:cources_app/core/network/entity/success.dart';
import 'package:cources_app/feature/list_courses/domain/entity/courses_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class ListCoursesRepository{
  Future<Either<Failure, List<CoursesEntity>>> getListCourses();
  Future<Either<Failure, Success>> deleteCourse(int id);
}