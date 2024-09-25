import 'package:auto_route/auto_route.dart';
import 'package:cources_app/core/app/router/app_router.gr.dart';
import 'package:cources_app/feature/add_course/presentation/adding_course_screen.dart';
import 'package:cources_app/feature/list_courses/presentation/list_courses_screen.dart';
import 'package:injectable/injectable.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter{

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: ListCoursesRoute.page, initial: true),
    AutoRoute(page: CourseDetailRoute.page),
    AutoRoute(page: AddingCourseRoute.page),
  ];

}