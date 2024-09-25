part of 'adding_course_bloc.dart';

@freezed
class AddingCourseEvent with _$AddingCourseEvent {
  const factory AddingCourseEvent.addCourse(CoursesEntity coursesEntity) = _AddingCourse;
}
