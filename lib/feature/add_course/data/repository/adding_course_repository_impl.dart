import 'package:cources_app/core/network/entity/failure.dart';
import 'package:cources_app/core/network/entity/success.dart';
import 'package:cources_app/feature/add_course/data/local_data_source/adding_course_data_source.dart';
import 'package:cources_app/feature/add_course/domain/repository/adding_courses_repository.dart';
import 'package:cources_app/feature/list_courses/domain/entity/courses_entity.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AddingCourseRepository)
class AddingCourseRepositoryImpl extends AddingCourseRepository {
  final AddingCourseDataSource _addingCourseDataSource;

  AddingCourseRepositoryImpl(this._addingCourseDataSource);

  @override
  Future<Either<Failure, Success>> addingCourse(CoursesEntity courseEntity) async {
    try {
      await _addingCourseDataSource.addCourse(courseEntity);
      return Success.right;
    } catch (e) {
      return Left(Failure.database(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, CoursesEntity>> selectCourse(int id) async {
    try {
      final result = await _addingCourseDataSource.selectCourse(id);
      return Right(
        CoursesEntity(
          title: result.title,
          description: result.description,
          price: result.price,
          duration: result.duration,
          color: Color(result.color),
        ),
      );
    } catch (e) {
      return Left(Failure.database(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Success>> updateCourse(CoursesEntity course) async{
    try {
      await _addingCourseDataSource.updateCourse(course);
      return Success.right;
    } catch (e) {
      return Left(Failure.database(message: e.toString()));
    }
  }
}
