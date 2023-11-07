import 'dart:convert';
import 'package:gr1_flutter/models/course/type/vocabulary/vocabulary.dart';
import 'package:http/http.dart';
import 'package:flutter/foundation.dart';

class Lesson{
  int? id;
  String? title;
  int? order;
  List<Vocabulary>? units;

  Lesson({this.id, this.title,this.units,this.order});

  Lesson.fromJson(Map<String,dynamic> json){
    this.id = json['id']??0;
    this.title = json['title']??"";
    this.order = json['order'];
    List<Vocabulary> vocas = [];
    List<dynamic> vocaJson = json['vocabularies'];
    for(int i=0;i<vocaJson.length;i++){
      vocas.add(Vocabulary.fromJson(vocaJson[i]));
    }
    units = vocas;
  }

  Map<String,dynamic> toJson(){
    Map<String,dynamic> data = <String,dynamic>{};
    data['title'] = title;
    return data;
  }

  static List<Lesson> parseLessons(String body){
    final parsed =jsonDecode(body).cast<Map<String,dynamic>>();
    return parsed.map<Lesson>((json)=>Lesson.fromJson(json)).toList();
  }

  static Future<List<Lesson>> getLessonFromCourse(Client client,int id) async {
    final response = await client.get(Uri.parse("http://10.0.2.2:8000/api/lesson/course_id/$id"));
    return compute(parseLessons,response.body);
  }
}


var lesson1 = Lesson(
  id: 1,
  title: "Hello",
  units: []
);