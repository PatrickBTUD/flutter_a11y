// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'to_do_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ToDoState {
  List<ToDo> get todos => throw _privateConstructorUsedError;
  ToDo? get currentToDo => throw _privateConstructorUsedError;

  /// Create a copy of ToDoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ToDoStateCopyWith<ToDoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToDoStateCopyWith<$Res> {
  factory $ToDoStateCopyWith(ToDoState value, $Res Function(ToDoState) then) =
      _$ToDoStateCopyWithImpl<$Res, ToDoState>;
  @useResult
  $Res call({List<ToDo> todos, ToDo? currentToDo});

  $ToDoCopyWith<$Res>? get currentToDo;
}

/// @nodoc
class _$ToDoStateCopyWithImpl<$Res, $Val extends ToDoState>
    implements $ToDoStateCopyWith<$Res> {
  _$ToDoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToDoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? currentToDo = freezed,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<ToDo>,
      currentToDo: freezed == currentToDo
          ? _value.currentToDo
          : currentToDo // ignore: cast_nullable_to_non_nullable
              as ToDo?,
    ) as $Val);
  }

  /// Create a copy of ToDoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ToDoCopyWith<$Res>? get currentToDo {
    if (_value.currentToDo == null) {
      return null;
    }

    return $ToDoCopyWith<$Res>(_value.currentToDo!, (value) {
      return _then(_value.copyWith(currentToDo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ToDoStateImplCopyWith<$Res>
    implements $ToDoStateCopyWith<$Res> {
  factory _$$ToDoStateImplCopyWith(
          _$ToDoStateImpl value, $Res Function(_$ToDoStateImpl) then) =
      __$$ToDoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ToDo> todos, ToDo? currentToDo});

  @override
  $ToDoCopyWith<$Res>? get currentToDo;
}

/// @nodoc
class __$$ToDoStateImplCopyWithImpl<$Res>
    extends _$ToDoStateCopyWithImpl<$Res, _$ToDoStateImpl>
    implements _$$ToDoStateImplCopyWith<$Res> {
  __$$ToDoStateImplCopyWithImpl(
      _$ToDoStateImpl _value, $Res Function(_$ToDoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToDoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
    Object? currentToDo = freezed,
  }) {
    return _then(_$ToDoStateImpl(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<ToDo>,
      currentToDo: freezed == currentToDo
          ? _value.currentToDo
          : currentToDo // ignore: cast_nullable_to_non_nullable
              as ToDo?,
    ));
  }
}

/// @nodoc

class _$ToDoStateImpl implements _ToDoState {
  const _$ToDoStateImpl(
      {required final List<ToDo> todos, required this.currentToDo})
      : _todos = todos;

  final List<ToDo> _todos;
  @override
  List<ToDo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final ToDo? currentToDo;

  @override
  String toString() {
    return 'ToDoState(todos: $todos, currentToDo: $currentToDo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToDoStateImpl &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.currentToDo, currentToDo) ||
                other.currentToDo == currentToDo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_todos), currentToDo);

  /// Create a copy of ToDoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToDoStateImplCopyWith<_$ToDoStateImpl> get copyWith =>
      __$$ToDoStateImplCopyWithImpl<_$ToDoStateImpl>(this, _$identity);
}

abstract class _ToDoState implements ToDoState {
  const factory _ToDoState(
      {required final List<ToDo> todos,
      required final ToDo? currentToDo}) = _$ToDoStateImpl;

  @override
  List<ToDo> get todos;
  @override
  ToDo? get currentToDo;

  /// Create a copy of ToDoState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToDoStateImplCopyWith<_$ToDoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
