part of 'data_base.dart';

class CourseTableHelper {
  final db = getIt<Database>();

  Future<int> addCourse(CoursesCompanion entry) {
    return db.into(db.courses).insert(entry);
  }
}
