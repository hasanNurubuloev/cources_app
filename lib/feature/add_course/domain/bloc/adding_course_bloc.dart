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
class AddingCourseBloc extends Bloc<AddCourseEvent, AddingCourseState> {
  final AddingCourseRepository _repository;

  AddingCourseBloc(this._repository)
      : super(
          const AddingCourseState(stateStatus: StateStatus.initial()),
        ) {
    on<_AddingCourse>(_onAddingCourse);
    on<_SelectCourse>(_onSelectCourse);
    on<_UpdateCourse>(_onUpdateCourse);
  }

  FutureOr<void> _onAddingCourse(_AddingCourse event, Emitter<AddingCourseState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    final result = await _repository.addingCourse(event.coursesEntity);

    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? '')));
    }, (r) {
      emit(state.copyWith(stateStatus: const StateStatus.success()));
    });
  }

  FutureOr<void> _onSelectCourse(_SelectCourse event, Emitter<AddingCourseState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    final result = await _repository.selectCourse(event.id);
    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? '')));
    }, (r) {
      emit(state.copyWith(stateStatus: const StateStatus.success(true), courseEntity: r));
    });
  }

  FutureOr<void> _onUpdateCourse(_UpdateCourse event, Emitter<AddingCourseState> emit) async {
    emit(state.copyWith(stateStatus: const StateStatus.loading()));

    final result = await _repository.updateCourse(event.course);
    result.fold((l) {
      emit(state.copyWith(stateStatus: StateStatus.failure(message: l.message ?? '')));
    }, (r) {
      emit(state.copyWith(stateStatus: const StateStatus.success(false)));
    });

  }
}
