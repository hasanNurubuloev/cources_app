import 'dart:async';

import 'package:cources_app/core/network/entity/state_status.dart';
import 'package:cources_app/feature/list_courses/domain/entity/courses_entity.dart';
import 'package:cources_app/feature/list_courses/domain/repository/list_courses_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'list_courses_bloc.freezed.dart';

part 'list_courses_event.dart';

part 'list_courses_state.dart';

@injectable
class ListCoursesBloc extends Bloc<ListCoursesEvent, ListCoursesState> {
  final ListCoursesRepository _repository;

  ListCoursesBloc(this._repository)
      : super(const ListCoursesState(stateStatus: StateStatus.initial(), listCourses: [])) {
    on<_GetListCourses>(_onGetListCourses);
    on<_DeleteCourse>(_onDeleteCourses);
  }

  FutureOr<void> _onGetListCourses(_GetListCourses event, Emitter<ListCoursesState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    final result = await _repository.getListCourses();

    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? l.toString())));
    }, (r) {
      emit(state.copyWith(stateStatus:  const StateStatus.success(), listCourses: r));
    });
  }
  FutureOr<void> _onDeleteCourses(_DeleteCourse event, Emitter<ListCoursesState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    final result = await _repository.deleteCourse(event.id);

    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? l.toString())));
    }, (r) {
      emit(state.copyWith(stateStatus:  const StateStatus.success()));
    });
  }


}
