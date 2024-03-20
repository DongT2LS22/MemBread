// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vocabulary_lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VocabularyLesson _$VocabularyLessonFromJson(Map<String, dynamic> json) {
  return _VocalaryLesson.fromJson(json);
}

/// @nodoc
mixin _$VocabularyLesson {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VocabularyLessonCopyWith<VocabularyLesson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VocabularyLessonCopyWith<$Res> {
  factory $VocabularyLessonCopyWith(
          VocabularyLesson value, $Res Function(VocabularyLesson) then) =
      _$VocabularyLessonCopyWithImpl<$Res, VocabularyLesson>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$VocabularyLessonCopyWithImpl<$Res, $Val extends VocabularyLesson>
    implements $VocabularyLessonCopyWith<$Res> {
  _$VocabularyLessonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VocalaryLessonImplCopyWith<$Res>
    implements $VocabularyLessonCopyWith<$Res> {
  factory _$$VocalaryLessonImplCopyWith(_$VocalaryLessonImpl value,
          $Res Function(_$VocalaryLessonImpl) then) =
      __$$VocalaryLessonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$VocalaryLessonImplCopyWithImpl<$Res>
    extends _$VocabularyLessonCopyWithImpl<$Res, _$VocalaryLessonImpl>
    implements _$$VocalaryLessonImplCopyWith<$Res> {
  __$$VocalaryLessonImplCopyWithImpl(
      _$VocalaryLessonImpl _value, $Res Function(_$VocalaryLessonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$VocalaryLessonImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VocalaryLessonImpl implements _VocalaryLesson {
  const _$VocalaryLessonImpl({required this.title, this.description = ""});

  factory _$VocalaryLessonImpl.fromJson(Map<String, dynamic> json) =>
      _$$VocalaryLessonImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey()
  final String description;

  @override
  String toString() {
    return 'VocabularyLesson(title: $title, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VocalaryLessonImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VocalaryLessonImplCopyWith<_$VocalaryLessonImpl> get copyWith =>
      __$$VocalaryLessonImplCopyWithImpl<_$VocalaryLessonImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VocalaryLessonImplToJson(
      this,
    );
  }
}

abstract class _VocalaryLesson implements VocabularyLesson {
  const factory _VocalaryLesson(
      {required final String title,
      final String description}) = _$VocalaryLessonImpl;

  factory _VocalaryLesson.fromJson(Map<String, dynamic> json) =
      _$VocalaryLessonImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$VocalaryLessonImplCopyWith<_$VocalaryLessonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
