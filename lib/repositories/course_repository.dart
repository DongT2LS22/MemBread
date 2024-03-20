
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gr1_flutter/config/server.dart';
import 'package:gr1_flutter/repositories/repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/course/course.dart';
import 'package:http/http.dart' as http;


class CourseRepository extends Repository<Course> {
  Future<List<Course>> getAll() async {
    // Using package:http, we fetch a random activity from the Bored API.
    final response = await http.get(Uri.parse('$URI/course'));
    // Using dart:convert, we then decode the JSON payload into a Map data structure.
    if (response.statusCode == 200) {
      // Parse the JSON response into a list of Course objects
      final coursesJson = jsonDecode(response.body) as List<dynamic>;
      final courses = coursesJson.map((courseJson) => Course.fromJson(courseJson)).toList();
      return courses;
    } else {
      // Handle API errors gracefully (e.g., throw an exception)
      throw Exception('Failed to fetch courses: ${response.statusCode}');
    }
  }

  @override
  Future<Course> getOne(int id) async {
    final response = await http.get(Uri.parse('$URI/course/$id'));

    if(response.statusCode == 200)
    {
      final courseJson = jsonDecode(response.body) as dynamic;
      final course = Course.fromJson(courseJson);

      return course;
    } else {
      throw Exception('Failed to fetch courses: ${response.statusCode}');
    }
  }

  @override
  Future<void> createOne(Course course) async {
    await http.post(Uri.parse('$URI/course'),
        body: {
          "title" : course.title,
          "description" : course.description
        }).then((value){
      if(value.statusCode == 201) {
        if (kDebugMode) {
          print("COURSE CREATED SUCCESSFUL !");
        }
      }else{
        throw Exception('Failed to create course: ${value.statusCode}');
      }
    });
  }

  @override
  void deleteOne(int id) async {
    await http.delete(Uri.parse('$URI/course/$id')).then((value){});
  }

  @override
  void updateOne() {
    // TODO: implement updateOne
  }
}

final courseRepository = Provider<CourseRepository>((ref)=>CourseRepository());

final courseGetAll = FutureProvider<List<Course>>((ref) async {
  return ref.watch(courseRepository).getAll();
});

final courseGetOne = FutureProvider.family<Course?, int>((ref, id) {
  return ref.read(courseRepository).getOne(id);
});

