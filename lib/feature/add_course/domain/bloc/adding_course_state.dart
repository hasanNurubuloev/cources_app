part of 'adding_course_bloc.dart';

@freezed
class AddingCourseState with _$AddingCourseState {
  const factory AddingCourseState({
    required final StateStatus stateStatus,
    CoursesEntity? courseEntity,
}) = _AddingCourseState;
}
