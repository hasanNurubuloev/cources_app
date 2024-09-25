part of 'list_courses_bloc.dart';

@freezed
class ListCoursesState with _$ListCoursesState {
  const factory ListCoursesState({
    required final StateStatus stateStatus,
    required final List<CoursesEntity> listCourses,
  }) = _ListCoursesState;
}