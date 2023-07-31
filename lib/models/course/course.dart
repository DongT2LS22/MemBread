import 'dart:convert';

import 'package:gr1_flutter/models/user.dart';
import 'package:http/http.dart';

import 'lesson.dart';

class Course {
  int? id;
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
    List<dynamic> lessonsJson = json['lessons'];
    List<Lesson> lessonClone = [];
    if(lessonsJson.isNotEmpty){
      for(int i=0;i<lessonsJson.length;i++){
        lessonClone!.add(Lesson.fromJson(lessonsJson[i]));
        // print(lessonsJson[i]['title']);
      }
    }
    lessons = lessonClone;
  }

  Map<String,dynamic> toJson(){
    Map<String,dynamic> data = <String,dynamic> {};
    data['title'] = title;
    data['author'] = author!.id!;
    data['description'] = description??"";
    return data;
  }

  static Future<Course> getById(int id) async{
    Response response = await get(Uri.parse("http://10.0.2.2:8000/api/course/$id"));
    Course course = Course.fromJson(jsonDecode(response.body));
    return course;
  }

  static void create(Course course)async{
    final Map<String,dynamic> data = course.toJson();
    print(data['title']);
    final response = await post(
      Uri.parse("http://10.0.2.2:8000/api/course"),
      body: data
    );
    print(response.statusCode);
  }
}