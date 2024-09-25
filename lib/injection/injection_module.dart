import 'package:cources_app/core/local_database/data_base.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DatabaseModule {
  @singleton
  Database get db => Database();
}