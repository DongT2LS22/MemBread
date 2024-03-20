

import 'package:gr1_flutter/models/lesson/lesson.dart';
import 'package:gr1_flutter/repositories/repository.dart';

class LessonRepository extends Repository<Lesson>{
  @override
  void createOne(Lesson lesson) {
    // TODO: implement createOne
  }

  @override
  void deleteOne(int id) {
    // TODO: implement deleteOne
  }

  @override
  Future<Lesson> getOne(int id) {
    // TODO: implement getOne
    throw UnimplementedError();
  }

  @override
  void updateOne() {
    // TODO: implement updateOne
  }

}