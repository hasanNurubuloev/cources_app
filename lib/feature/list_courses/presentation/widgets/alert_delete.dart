import 'package:auto_route/auto_route.dart';
import 'package:cources_app/feature/list_courses/domain/bloc/list_courses_bloc.dart';
import 'package:cources_app/injection/injection.dart';
import 'package:cources_app/widgets/snack_bar/app_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlertDelete extends StatelessWidget {
  final int id;

  const AlertDelete({
    required this.id,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ListCoursesBloc>(),
      child: BlocConsumer<ListCoursesBloc, ListCoursesState>(
        listener: (context, state) {
          state.stateStatus.whenOrNull(success: (_) {
            AppSnackBar.show(context: context, titleText: 'Курс успешно удален!');
            context.maybePop();
          });
        },
        builder: (context, state) {
          return AlertDialog(
            title: const Text("Удаление"),
            content: const Text(
              "Вы действительно хотите удалить курс?",
              style: TextStyle(fontSize: 16),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context.read<ListCoursesBloc>().add(
                        DeleteCourseEvent.deleteCourse(
                          id,
                        ),
                      );
                  context.maybePop();
                },
                child: const Text('Да'),
              ),
              TextButton(
                onPressed: context.maybePop,
                child: const Text('Нет'),
              )
            ],
          );
        },
      ),
    );
  }
}
