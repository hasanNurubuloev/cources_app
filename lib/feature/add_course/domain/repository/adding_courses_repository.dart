import 'package:cources_app/core/network/entity/failure.dart';
import 'package:cources_app/core/network/entity/success.dart';
import 'package:cources_app/feature/list_courses/domain/entity/courses_entity.dart';
import 'package:fpdart/fpdart.dart';

abstract class AddingCourseRepository {
  Future<Either<Failure, Success>> addingCourse(CoursesEntity courseEntity);
}