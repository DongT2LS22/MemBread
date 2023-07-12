import 'package:gr1_flutter/models/course/course.dart';
import 'package:gr1_flutter/models/course/lesson.dart';

import '../models/course/type/vocabulary/vocabulary.dart';

Lesson<Vocabulary> vocalesson = Lesson<Vocabulary>(units: [
  Vocabulary(vocabulary: "Hello",mean: "Xin chao"),
  Vocabulary(vocabulary: "Goodbye",mean: "Tam biet"),
  Vocabulary(vocabulary: "Name",mean: "Ten"),
  Vocabulary(vocabulary: "Membread",mean: "Banh mi tri nho"),
  Vocabulary(vocabulary: "Welcome" , mean: "Chao mung")
]);

Course test = Course(title: "Test",description: "Test course" , lessons: [vocalesson]);