import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cources_app/core/network/entity/state_status.dart';
import 'package:cources_app/feature/add_course/domain/repository/adding_courses_repository.dart';
import 'package:cources_app/feature/list_courses/domain/entity/courses_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'adding_course_bloc.freezed.dart';
part 'adding_course_event.dart';
part 'adding_course_state.dart';

@injectable
class AddingCourseBloc extends Bloc<AddingCourseEvent, AddingCourseState> {
  final AddingCourseRepository _repository;

  AddingCourseBloc(this._repository)
      : super(
          const AddingCourseState(stateStatus: StateStatus.initial()),
        ) {
    on<_AddingCourse>(_onAddingCourse);
  }

  FutureOr<void> _onAddingCourse(_AddingCourse event, Emitter<AddingCourseState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    final result = await _repository.addingCourse(event.coursesEntity);

    result.fold(
      (l) {
        emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? '')));
      },
      (r) {
        emit(state.copyWith(stateStatus: const StateStatus.success()));
      },
    );
  }
}
