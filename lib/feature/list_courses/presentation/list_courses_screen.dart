import 'package:auto_route/auto_route.dart';
import 'package:cources_app/core/app/router/app_router.gr.dart';
import 'package:cources_app/feature/list_courses/domain/bloc/list_courses_bloc.dart';
import 'package:cources_app/feature/list_courses/presentation/widgets/courses_app_bar.dart';
import 'package:cources_app/feature/list_courses/presentation/widgets/courses_list.dart';
import 'package:cources_app/feature/list_courses/presentation/widgets/flexible_space_app_bar.dart';
import 'package:cources_app/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ListCoursesScreen extends StatelessWidget {
  const ListCoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ListCoursesBloc>(
      create: (context) => getIt<ListCoursesBloc>()..add(const GetListCoursesEvent.getListCourses()),
      child: Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        appBar: const CoursesAppBar(),
        body: const CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceAppBar(),
            ),
            SliverToBoxAdapter(
              child: CoursesList(),
            ),
          ],
        ),
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () {
              context.router.push(const AddingCourseRoute()).then(
                (e) {
                  if (context.mounted) {
                    context.read<ListCoursesBloc>().add(const GetListCoursesEvent.getListCourses());
                  }
                },
              );
            },
            child: const Icon(Icons.add),
          );
        }),
      ),
    );
  }
}
