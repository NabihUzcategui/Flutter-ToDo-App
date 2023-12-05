// part of 'todo_bloc.dart';

// abstract class TodoEvent extends Equatable {
//   const TodoEvent();

//   @override
//   List<Object?> get props => [];
// }

// class TodoStarted extends TodoEvent {}

// class AddTodoEvent extends TodoEvent {
//   final Todo todo;

//   const AddTodoEvent({required this.todo});

//   @override
//   List<Object?> get props => [todo];
// }

// class RemoveTodoEvent extends TodoEvent {
//   final Todo todo;

//   const RemoveTodoEvent({required this.todo});

//   @override
//   List<Object?> get props => [todo];
// }

// class AlertTodoEvent extends TodoEvent {
//   final int index;

//   const AlertTodoEvent(this.index);

//   @override
//   List<Object?> get props => [index];
// }

part of 'todo_bloc.dart';

abstract class TodoEvent extends Equatable {
  const TodoEvent();

  @override
  List<Object?> get props => [];
}

class TodoStarted extends TodoEvent {}

class AddTodo extends TodoEvent {
  final Todo todo;

  const AddTodo(this.todo);

  @override
  List<Object?> get props => [todo];
}

class RemoveTodo extends TodoEvent {
  final Todo todo;

  const RemoveTodo(this.todo);

  @override
  List<Object?> get props => [todo];
}

class AlterTodo extends TodoEvent {
  final int index;

  const AlterTodo(this.index);

  @override
  List<Object?> get props => [index];
}
