import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gr1_flutter/models/lesson/lesson.dart';

part 'vocabulary_lesson.g.dart';
part 'vocabulary_lesson.freezed.dart';

@Freezed()
class VocabularyLesson extends Lesson with _$VocabularyLesson {
  const factory VocabularyLesson({
    required String title,
    @Default("") String description,
  }) = _VocalaryLesson;

  factory VocabularyLesson.fromJson(Map<String, Object?> json) => _$VocabularyLessonFromJson(json);
}