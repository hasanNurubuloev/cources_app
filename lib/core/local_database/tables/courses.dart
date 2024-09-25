import 'package:drift/drift.dart';

@DataClassName('Course')
class Courses extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  IntColumn get price => integer()();
  IntColumn get duration => integer()();
  IntColumn get color => integer()();
}