import 'package:flutter_a11y/models/to_do.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'to_do_state.freezed.dart';

@freezed
sealed class ToDoState with _$ToDoState {
  const factory ToDoState({
    required List<ToDo> todos,
    required ToDo? currentToDo,
  }) = _ToDoState;
}
