import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses_entity.freezed.dart';

@freezed
class CoursesEntity with _$CoursesEntity{
  factory CoursesEntity({
    int? id,
    required String title,
    required String description,
    required int price,
    required int duration,
    required Color color,
  }) = _CourseEntity;
}
