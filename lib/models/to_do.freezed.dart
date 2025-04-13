// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'to_do.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToDo {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  String get imageAlt => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Create a copy of ToDo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToDoCopyWith<ToDo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoCopyWith<$Res> {
  factory $ToDoCopyWith(ToDo value, $Res Function(ToDo) then) =
      _$ToDoCopyWithImpl<$Res, ToDo>;
  @useResult
  $Res call(
      {int id,
      String title,
      String imagePath,
      String imageAlt,
      bool isSelected});
}

/// @nodoc
class _$ToDoCopyWithImpl<$Res, $Val extends ToDo>
    implements $ToDoCopyWith<$Res> {
  _$ToDoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToDo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imagePath = null,
    Object? imageAlt = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      imageAlt: null == imageAlt
          ? _value.imageAlt
          : imageAlt // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToDoImplCopyWith<$Res> implements $ToDoCopyWith<$Res> {
  factory _$$ToDoImplCopyWith(
          _$ToDoImpl value, $Res Function(_$ToDoImpl) then) =
      __$$ToDoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String imagePath,
      String imageAlt,
      bool isSelected});
}

/// @nodoc
class __$$ToDoImplCopyWithImpl<$Res>
    extends _$ToDoCopyWithImpl<$Res, _$ToDoImpl>
    implements _$$ToDoImplCopyWith<$Res> {
  __$$ToDoImplCopyWithImpl(_$ToDoImpl _value, $Res Function(_$ToDoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToDo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imagePath = null,
    Object? imageAlt = null,
    Object? isSelected = null,
  }) {
    return _then(_$ToDoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      imageAlt: null == imageAlt
          ? _value.imageAlt
          : imageAlt // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ToDoImpl implements _ToDo {
  const _$ToDoImpl(
      {required this.id,
      required this.title,
      required this.imagePath,
      required this.imageAlt,
      required this.isSelected});

  @override
  final int id;
  @override
  final String title;
  @override
  final String imagePath;
  @override
  final String imageAlt;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'ToDo(id: $id, title: $title, imagePath: $imagePath, imageAlt: $imageAlt, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.imageAlt, imageAlt) ||
                other.imageAlt == imageAlt) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, imagePath, imageAlt, isSelected);

  /// Create a copy of ToDo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoImplCopyWith<_$ToDoImpl> get copyWith =>
      __$$ToDoImplCopyWithImpl<_$ToDoImpl>(this, _$identity);
}

abstract class _ToDo implements ToDo {
  const factory _ToDo(
      {required final int id,
      required final String title,
      required final String imagePath,
      required final String imageAlt,
      required final bool isSelected}) = _$ToDoImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  String get imagePath;
  @override
  String get imageAlt;
  @override
  bool get isSelected;

  /// Create a copy of ToDo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToDoImplCopyWith<_$ToDoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
