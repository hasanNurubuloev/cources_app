import 'package:cources_app/core/local_database/data_base.dart';
import 'package:cources_app/feature/list_courses/data/local_data_source/list_courses_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ListCoursesDataSource)
class ListCoursesDataSourceImpl extends ListCoursesDataSource {
  final Database db;

  ListCoursesDataSourceImpl(this.db);

  @override
  Future<List<Course>> getListCourses() async {
    return db.select(db.courses).get();
  }

  @override
  Future<void> deleteCourse(int id) {
    return (db.delete(db.courses)..where((t) => t.id.equals(id))).go();
  }
}
