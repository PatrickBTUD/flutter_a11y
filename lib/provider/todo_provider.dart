import 'package:flutter_a11y/models/to_do.dart';
import 'package:flutter_a11y/models/to_do_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'todo_provider.g.dart';

@riverpod
class TodoController extends _$TodoController {
  @override
  ToDoState build() {
    return ToDoState(
      todos: [],
      currentToDo: null,
    );
  }

  void setCurrentToDo(ToDo todo) {
    state = state.copyWith(currentToDo: todo);
  }

  void addRandomToDo() {
    final todo = ToDo(
      id: state.todos.length,
      title: 'To Do ${state.todos.length}',
      isSelected: false,
      imageAlt: 'On this image you can see a person with a book',
      imagePath: 'assets/images/placeholder.jpeg',
    );
    state = state.copyWith(todos: [...state.todos, todo]);
  }

  void addTodo(ToDo todo) {
    state = state.copyWith(todos: [...state.todos, todo]);
  }

  void toggle(ToDo toDo) {
    final todos = state.todos;
    for (var todo in todos) {
      if (todo.id == toDo.id) {
        todo = toDo.copyWith(isSelected: !todo.isSelected);
      }
    }
    state = state.copyWith(todos: todos);
  }
}
