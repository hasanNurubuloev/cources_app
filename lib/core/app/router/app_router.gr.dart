// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:cources_app/feature/add_course/presentation/adding_course_screen.dart'
    as _i1;
import 'package:cources_app/feature/course_detail/presentation/course_detail_screen.dart'
    as _i2;
import 'package:cources_app/feature/list_courses/domain/entity/courses_entity.dart'
    as _i5;
import 'package:cources_app/feature/list_courses/presentation/list_courses_screen.dart'
    as _i3;
import 'package:flutter/material.dart' as _i6;

/// generated route for
/// [_i1.AddingCourseScreen]
class AddingCourseRoute extends _i4.PageRouteInfo<void> {
  const AddingCourseRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AddingCourseRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddingCourseRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.AddingCourseScreen();
    },
  );
}

/// generated route for
/// [_i2.CourseDetailScreen]
class CourseDetailRoute extends _i4.PageRouteInfo<CourseDetailRouteArgs> {
  CourseDetailRoute({
    required _i5.CoursesEntity coursesModel,
    _i6.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          CourseDetailRoute.name,
          args: CourseDetailRouteArgs(
            coursesModel: coursesModel,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CourseDetailRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CourseDetailRouteArgs>();
      return _i2.CourseDetailScreen(
        coursesModel: args.coursesModel,
        key: args.key,
      );
    },
  );
}

class CourseDetailRouteArgs {
  const CourseDetailRouteArgs({
    required this.coursesModel,
    this.key,
  });

  final _i5.CoursesEntity coursesModel;

  final _i6.Key? key;

  @override
  String toString() {
    return 'CourseDetailRouteArgs{coursesModel: $coursesModel, key: $key}';
  }
}

/// generated route for
/// [_i3.ListCoursesScreen]
class ListCoursesRoute extends _i4.PageRouteInfo<void> {
  const ListCoursesRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ListCoursesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListCoursesRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.ListCoursesScreen();
    },
  );
}
