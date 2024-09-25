import 'dart:ui';

import 'package:cources_app/core/network/entity/failure.dart';
import 'package:cources_app/core/network/entity/success.dart';
import 'package:cources_app/feature/list_courses/data/local_data_source/list_courses_data_source.dart';
import 'package:cources_app/feature/list_courses/domain/entity/courses_entity.dart';
import 'package:cources_app/feature/list_courses/domain/repository/list_courses_repository.dart';
import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ListCoursesRepository)
class ListCoursesRepositoryImpl extends ListCoursesRepository {
  final ListCoursesDataSource _coursesDataSource;

  ListCoursesRepositoryImpl(this._coursesDataSource);

  @override
  Future<Either<Failure, List<CoursesEntity>>> getListCourses() async {
    try {
      final result = await _coursesDataSource.getListCourses();
      List<CoursesEntity> resList = result
          .map((e) => CoursesEntity(
                id: e.id,
                title: e.title,
                description: e.description,
                price: e.price,
                duration: e.duration,
                color: Color(e.color),
              ))
          .toList();
      return Right(resList);
    } catch (e) {
      return Left(Failure.database(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Success>> deleteCourse(int id) async {
    try {
      await _coursesDataSource.deleteCourse(id);
      return Success.right;
    } catch (e) {
      return Left(Failure.database(message: e.toString()));
    }
  }
}
