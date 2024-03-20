// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseDetailImpl _$$CourseDetailImplFromJson(Map<String, dynamic> json) =>
    _$CourseDetailImpl(
      title: json['title'] as String,
      description: json['description'] as String? ?? "",
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      created_date: json['created_date'] as String,
      like: json['like'] as int? ?? 0,
      number_of_participants: json['number_of_participants'] as int? ?? 0,
    );

Map<String, dynamic> _$$CourseDetailImplToJson(_$CourseDetailImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'created_date': instance.created_date,
      'like': instance.like,
      'number_of_participants': instance.number_of_participants,
    };
