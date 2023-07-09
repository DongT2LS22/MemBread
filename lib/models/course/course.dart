import 'package:gr1_flutter/models/user.dart';

import 'lesson.dart';

class Course {
  String? id;
  String? title;
  String? description;
  User? author;
  List<User>? participants;
  List<Lesson>? lessons;
  List<String>? tags;


  Course({this.id, this.title, this.author,this.description, this.participants, this.lessons, this.tags});

  Course.fromJson(Map<String,dynamic> json){
    id = json['id'];
    title = json['title'];
    author = json['author'] != null ? User.fromJson(json['author']) : null;
    description = json['description'];
  }
}