import 'package:cources_app/core/local_database/data_base.dart';
import 'package:cources_app/feature/add_course/data/local_data_source/adding_course_data_source.dart';
import 'package:cources_app/feature/list_courses/domain/entity/courses_entity.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AddingCourseDataSource)
class AddingCourseDataSourceImpl extends AddingCourseDataSource {
  final Database db;

  AddingCourseDataSourceImpl(this.db);

  @override
  Future<void> addCourse(CoursesEntity course) async {
    await db.into(db.courses).insert(
          CoursesCompanion(
            title: Value(course.title),
            description: Value(course.description),
            price: Value(course.price),
            duration: Value(course.duration),
            color: Value(course.color.value),
          ),
        );
  }
}