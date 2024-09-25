import 'package:auto_route/auto_route.dart';
import 'package:cources_app/core/app/router/app_router.gr.dart';
import 'package:cources_app/core/network/entity/state_status.dart';
import 'package:cources_app/feature/list_courses/domain/bloc/list_courses_bloc.dart';
import 'package:cources_app/feature/list_courses/presentation/widgets/alert_delete.dart';
import 'package:cources_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesList extends StatelessWidget {
  const CoursesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListCoursesBloc, ListCoursesState>(
      builder: (context, state) {
        return Stack(
          children: [
            if (state.stateStatus is LoadingStatus)
              const Positioned.fill(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.listCourses.length,
              itemBuilder: (_, index) {
                return GestureDetector(
                  onTap: () => context.router.push(CourseDetailRoute(coursesModel: state.listCourses[index])),
                  onLongPress: () => showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDelete(id: state.listCourses[index].id ?? 0);
                    },
                  ).whenComplete(() {
                    if (context.mounted) {
                      context.read<ListCoursesBloc>().add(const GetListCoursesEvent.getListCourses());
                    }
                  }),
                  child: Container(
                    // color: Colors.lightBlueAccent,
                    margin: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: state.listCourses[index].color,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.listCourses[index].title,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              fontFamily: FontFamily.alegaya,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            state.listCourses[index].description,
                            maxLines: 3,
                            overflow: TextOverflow.clip,
                            style: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16,
                              fontFamily: FontFamily.alegaya,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
