// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cources_app/core/app/router/app_router.dart' as _i420;
import 'package:cources_app/core/local_database/data_base.dart' as _i763;
import 'package:cources_app/feature/add_course/data/local_data_source/adding_course_data_source.dart'
    as _i921;
import 'package:cources_app/feature/add_course/data/local_data_source/impl/adding_course_data_source_impl.dart'
    as _i461;
import 'package:cources_app/feature/add_course/data/repository/adding_course_repository_impl.dart'
    as _i358;
import 'package:cources_app/feature/add_course/domain/bloc/adding_course_bloc.dart'
    as _i171;
import 'package:cources_app/feature/add_course/domain/repository/adding_courses_repository.dart'
    as _i235;
import 'package:cources_app/feature/list_courses/data/local_data_source/impl/list_courses_data_source_list.dart'
    as _i361;
import 'package:cources_app/feature/list_courses/data/local_data_source/list_courses_data_source.dart'
    as _i502;
import 'package:cources_app/feature/list_courses/data/repository/list_courses_repository_impl.dart'
    as _i336;
import 'package:cources_app/feature/list_courses/domain/bloc/list_courses_bloc.dart'
    as _i950;
import 'package:cources_app/feature/list_courses/domain/repository/list_courses_repository.dart'
    as _i731;
import 'package:cources_app/injection/injection_module.dart' as _i393;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final databaseModule = _$DatabaseModule();
    gh.singleton<_i420.AppRouter>(() => _i420.AppRouter());
    gh.singleton<_i763.Database>(() => databaseModule.db);
    gh.factory<_i502.ListCoursesDataSource>(
        () => _i361.ListCoursesDataSourceImpl(gh<_i763.Database>()));
    gh.factory<_i921.AddingCourseDataSource>(
        () => _i461.AddingCourseDataSourceImpl(gh<_i763.Database>()));
    gh.factory<_i731.ListCoursesRepository>(() =>
        _i336.ListCoursesRepositoryImpl(gh<_i502.ListCoursesDataSource>()));
    gh.factory<_i235.AddingCourseRepository>(() =>
        _i358.AddingCourseRepositoryImpl(gh<_i921.AddingCourseDataSource>()));
    gh.factory<_i950.ListCoursesBloc>(
        () => _i950.ListCoursesBloc(gh<_i731.ListCoursesRepository>()));
    gh.factory<_i171.AddingCourseBloc>(
        () => _i171.AddingCourseBloc(gh<_i235.AddingCourseRepository>()));
    return this;
  }
}

class _$DatabaseModule extends _i393.DatabaseModule {}
