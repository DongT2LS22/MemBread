import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@Freezed()
class Course with _$Course{
  const factory Course({
    int? id,
    required String title,
    // required String author,
    @Default("") String? description,
    // required this.participants,
    // required this.tags
  }) = _Course;

  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}