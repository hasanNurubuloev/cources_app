
part of 'list_courses_bloc.dart';
abstract class ListCoursesEvent{}

@freezed
class GetListCoursesEvent extends ListCoursesEvent with _$GetListCoursesEvent {
    const factory GetListCoursesEvent.getListCourses() = _GetListCourses;
}
@freezed
class DeleteCourseEvent extends ListCoursesEvent with _$DeleteCourseEvent {
    const factory DeleteCourseEvent.deleteCourse(int id) = _DeleteCourse;
}