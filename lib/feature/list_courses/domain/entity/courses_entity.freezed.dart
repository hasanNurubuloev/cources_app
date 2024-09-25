// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'courses_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoursesEntity {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  /// Create a copy of CoursesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoursesEntityCopyWith<CoursesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoursesEntityCopyWith<$Res> {
  factory $CoursesEntityCopyWith(
          CoursesEntity value, $Res Function(CoursesEntity) then) =
      _$CoursesEntityCopyWithImpl<$Res, CoursesEntity>;
  @useResult
  $Res call(
      {int? id,
      String title,
      String description,
      int price,
      int duration,
      Color color});
}

/// @nodoc
class _$CoursesEntityCopyWithImpl<$Res, $Val extends CoursesEntity>
    implements $CoursesEntityCopyWith<$Res> {
  _$CoursesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoursesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? duration = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CourseEntityImplCopyWith<$Res>
    implements $CoursesEntityCopyWith<$Res> {
  factory _$$CourseEntityImplCopyWith(
          _$CourseEntityImpl value, $Res Function(_$CourseEntityImpl) then) =
      __$$CourseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String title,
      String description,
      int price,
      int duration,
      Color color});
}

/// @nodoc
class __$$CourseEntityImplCopyWithImpl<$Res>
    extends _$CoursesEntityCopyWithImpl<$Res, _$CourseEntityImpl>
    implements _$$CourseEntityImplCopyWith<$Res> {
  __$$CourseEntityImplCopyWithImpl(
      _$CourseEntityImpl _value, $Res Function(_$CourseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoursesEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? duration = null,
    Object? color = null,
  }) {
    return _then(_$CourseEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$CourseEntityImpl implements _CourseEntity {
  _$CourseEntityImpl(
      {this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.duration,
      required this.color});

  @override
  final int? id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int price;
  @override
  final int duration;
  @override
  final Color color;

  @override
  String toString() {
    return 'CoursesEntity(id: $id, title: $title, description: $description, price: $price, duration: $duration, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CourseEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, price, duration, color);

  /// Create a copy of CoursesEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CourseEntityImplCopyWith<_$CourseEntityImpl> get copyWith =>
      __$$CourseEntityImplCopyWithImpl<_$CourseEntityImpl>(this, _$identity);
}

abstract class _CourseEntity implements CoursesEntity {
  factory _CourseEntity(
      {final int? id,
      required final String title,
      required final String description,
      required final int price,
      required final int duration,
      required final Color color}) = _$CourseEntityImpl;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get description;
  @override
  int get price;
  @override
  int get duration;
  @override
  Color get color;

  /// Create a copy of CoursesEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CourseEntityImplCopyWith<_$CourseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
