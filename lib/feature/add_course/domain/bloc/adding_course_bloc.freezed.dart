// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adding_course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddingCourseEvent {
  CoursesEntity get coursesEntity => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoursesEntity coursesEntity) addCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoursesEntity coursesEntity)? addCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoursesEntity coursesEntity)? addCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddingCourse value) addCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddingCourse value)? addCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddingCourse value)? addCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddingCourseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddingCourseEventCopyWith<AddingCourseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddingCourseEventCopyWith<$Res> {
  factory $AddingCourseEventCopyWith(
          AddingCourseEvent value, $Res Function(AddingCourseEvent) then) =
      _$AddingCourseEventCopyWithImpl<$Res, AddingCourseEvent>;
  @useResult
  $Res call({CoursesEntity coursesEntity});

  $CoursesEntityCopyWith<$Res> get coursesEntity;
}

/// @nodoc
class _$AddingCourseEventCopyWithImpl<$Res, $Val extends AddingCourseEvent>
    implements $AddingCourseEventCopyWith<$Res> {
  _$AddingCourseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddingCourseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coursesEntity = null,
  }) {
    return _then(_value.copyWith(
      coursesEntity: null == coursesEntity
          ? _value.coursesEntity
          : coursesEntity // ignore: cast_nullable_to_non_nullable
              as CoursesEntity,
    ) as $Val);
  }

  /// Create a copy of AddingCourseEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoursesEntityCopyWith<$Res> get coursesEntity {
    return $CoursesEntityCopyWith<$Res>(_value.coursesEntity, (value) {
      return _then(_value.copyWith(coursesEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddingCourseImplCopyWith<$Res>
    implements $AddingCourseEventCopyWith<$Res> {
  factory _$$AddingCourseImplCopyWith(
          _$AddingCourseImpl value, $Res Function(_$AddingCourseImpl) then) =
      __$$AddingCourseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CoursesEntity coursesEntity});

  @override
  $CoursesEntityCopyWith<$Res> get coursesEntity;
}

/// @nodoc
class __$$AddingCourseImplCopyWithImpl<$Res>
    extends _$AddingCourseEventCopyWithImpl<$Res, _$AddingCourseImpl>
    implements _$$AddingCourseImplCopyWith<$Res> {
  __$$AddingCourseImplCopyWithImpl(
      _$AddingCourseImpl _value, $Res Function(_$AddingCourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddingCourseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coursesEntity = null,
  }) {
    return _then(_$AddingCourseImpl(
      null == coursesEntity
          ? _value.coursesEntity
          : coursesEntity // ignore: cast_nullable_to_non_nullable
              as CoursesEntity,
    ));
  }
}

/// @nodoc

class _$AddingCourseImpl implements _AddingCourse {
  const _$AddingCourseImpl(this.coursesEntity);

  @override
  final CoursesEntity coursesEntity;

  @override
  String toString() {
    return 'AddingCourseEvent.addCourse(coursesEntity: $coursesEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddingCourseImpl &&
            (identical(other.coursesEntity, coursesEntity) ||
                other.coursesEntity == coursesEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coursesEntity);

  /// Create a copy of AddingCourseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddingCourseImplCopyWith<_$AddingCourseImpl> get copyWith =>
      __$$AddingCourseImplCopyWithImpl<_$AddingCourseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CoursesEntity coursesEntity) addCourse,
  }) {
    return addCourse(coursesEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CoursesEntity coursesEntity)? addCourse,
  }) {
    return addCourse?.call(coursesEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CoursesEntity coursesEntity)? addCourse,
    required TResult orElse(),
  }) {
    if (addCourse != null) {
      return addCourse(coursesEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddingCourse value) addCourse,
  }) {
    return addCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddingCourse value)? addCourse,
  }) {
    return addCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddingCourse value)? addCourse,
    required TResult orElse(),
  }) {
    if (addCourse != null) {
      return addCourse(this);
    }
    return orElse();
  }
}

abstract class _AddingCourse implements AddingCourseEvent {
  const factory _AddingCourse(final CoursesEntity coursesEntity) =
      _$AddingCourseImpl;

  @override
  CoursesEntity get coursesEntity;

  /// Create a copy of AddingCourseEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddingCourseImplCopyWith<_$AddingCourseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddingCourseState {
  StateStatus get stateStatus => throw _privateConstructorUsedError;
  CoursesEntity? get courseEntity => throw _privateConstructorUsedError;

  /// Create a copy of AddingCourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddingCourseStateCopyWith<AddingCourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddingCourseStateCopyWith<$Res> {
  factory $AddingCourseStateCopyWith(
          AddingCourseState value, $Res Function(AddingCourseState) then) =
      _$AddingCourseStateCopyWithImpl<$Res, AddingCourseState>;
  @useResult
  $Res call({StateStatus stateStatus, CoursesEntity? courseEntity});

  $StateStatusCopyWith<$Res> get stateStatus;
  $CoursesEntityCopyWith<$Res>? get courseEntity;
}

/// @nodoc
class _$AddingCourseStateCopyWithImpl<$Res, $Val extends AddingCourseState>
    implements $AddingCourseStateCopyWith<$Res> {
  _$AddingCourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddingCourseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? courseEntity = freezed,
  }) {
    return _then(_value.copyWith(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      courseEntity: freezed == courseEntity
          ? _value.courseEntity
          : courseEntity // ignore: cast_nullable_to_non_nullable
              as CoursesEntity?,
    ) as $Val);
  }

  /// Create a copy of AddingCourseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StateStatusCopyWith<$Res> get stateStatus {
    return $StateStatusCopyWith<$Res>(_value.stateStatus, (value) {
      return _then(_value.copyWith(stateStatus: value) as $Val);
    });
  }

  /// Create a copy of AddingCourseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoursesEntityCopyWith<$Res>? get courseEntity {
    if (_value.courseEntity == null) {
      return null;
    }

    return $CoursesEntityCopyWith<$Res>(_value.courseEntity!, (value) {
      return _then(_value.copyWith(courseEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddingCourseStateImplCopyWith<$Res>
    implements $AddingCourseStateCopyWith<$Res> {
  factory _$$AddingCourseStateImplCopyWith(_$AddingCourseStateImpl value,
          $Res Function(_$AddingCourseStateImpl) then) =
      __$$AddingCourseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateStatus stateStatus, CoursesEntity? courseEntity});

  @override
  $StateStatusCopyWith<$Res> get stateStatus;
  @override
  $CoursesEntityCopyWith<$Res>? get courseEntity;
}

/// @nodoc
class __$$AddingCourseStateImplCopyWithImpl<$Res>
    extends _$AddingCourseStateCopyWithImpl<$Res, _$AddingCourseStateImpl>
    implements _$$AddingCourseStateImplCopyWith<$Res> {
  __$$AddingCourseStateImplCopyWithImpl(_$AddingCourseStateImpl _value,
      $Res Function(_$AddingCourseStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddingCourseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stateStatus = null,
    Object? courseEntity = freezed,
  }) {
    return _then(_$AddingCourseStateImpl(
      stateStatus: null == stateStatus
          ? _value.stateStatus
          : stateStatus // ignore: cast_nullable_to_non_nullable
              as StateStatus,
      courseEntity: freezed == courseEntity
          ? _value.courseEntity
          : courseEntity // ignore: cast_nullable_to_non_nullable
              as CoursesEntity?,
    ));
  }
}

/// @nodoc

class _$AddingCourseStateImpl implements _AddingCourseState {
  const _$AddingCourseStateImpl({required this.stateStatus, this.courseEntity});

  @override
  final StateStatus stateStatus;
  @override
  final CoursesEntity? courseEntity;

  @override
  String toString() {
    return 'AddingCourseState(stateStatus: $stateStatus, courseEntity: $courseEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddingCourseStateImpl &&
            (identical(other.stateStatus, stateStatus) ||
                other.stateStatus == stateStatus) &&
            (identical(other.courseEntity, courseEntity) ||
                other.courseEntity == courseEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, stateStatus, courseEntity);

  /// Create a copy of AddingCourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddingCourseStateImplCopyWith<_$AddingCourseStateImpl> get copyWith =>
      __$$AddingCourseStateImplCopyWithImpl<_$AddingCourseStateImpl>(
          this, _$identity);
}

abstract class _AddingCourseState implements AddingCourseState {
  const factory _AddingCourseState(
      {required final StateStatus stateStatus,
      final CoursesEntity? courseEntity}) = _$AddingCourseStateImpl;

  @override
  StateStatus get stateStatus;
  @override
  CoursesEntity? get courseEntity;

  /// Create a copy of AddingCourseState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddingCourseStateImplCopyWith<_$AddingCourseStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
