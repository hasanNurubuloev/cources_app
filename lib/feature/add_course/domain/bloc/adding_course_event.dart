part of 'adding_course_bloc.dart';
abstract class AddCourseEvent {}
@freezed
class AddingCourseEvent extends AddCourseEvent with _$AddingCourseEvent {
  const factory AddingCourseEvent.addCourse(CoursesEntity coursesEntity) = _AddingCourse;
}
@freezed
class SelectCourseEvent extends AddCourseEvent with _$SelectCourseEvent {
  const factory SelectCourseEvent.selectCourse(int id) = _SelectCourse;
}
@freezed
class UpdateCourseEvent extends AddCourseEvent with _$UpdateCourseEvent {
  const factory UpdateCourseEvent.updateCourse(CoursesEntity course) = _UpdateCourse;
}
