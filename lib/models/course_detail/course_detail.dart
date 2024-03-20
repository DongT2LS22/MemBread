import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gr1_flutter/models/user/user.dart';
import 'package:intl/intl.dart';

part 'course_detail.g.dart';
part 'course_detail.freezed.dart';

@Freezed()
class CourseDetail with _$CourseDetail {
  const factory CourseDetail({
    required String title,
    @Default("") String? description,
    required User author,
    required String created_date,
    @Default(0) int like,
    @Default(0) int number_of_participants
  }) = _CourseDetail;

  factory CourseDetail.fromJson(Map<String, Object?> json) => _$CourseDetailFromJson(json);
}