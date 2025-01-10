import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redoq/repositories/user_repository.dart';
import '../models/user_model.dart';

class UserEvent {}

class LoadUsers extends UserEvent {}

class UpdateUser extends UserEvent {
  final List<int> path;
  final UserModel user;

  UpdateUser({required this.path, required this.user});
}

class UpdateUserEvent extends UserEvent {
  final int index;
  final UserModel updatedUser;

  UpdateUserEvent({required this.index, required this.updatedUser});
}

class UserState {
  final List<UserModel> users;

  UserState({this.users = const []});
}

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository repository;

  UserBloc(this.repository) : super(UserState()) {
    on<LoadUsers>((event, emit) {
      emit(UserState(users: repository.fetchUsers()));
    });

    on<UpdateUser>((event, emit) {
      final updatedUsers = List<UserModel>.from(state.users);
      _updateNestedUser(updatedUsers, event.path, event.user);
      emit(UserState(users: updatedUsers));
    });
  }

  void _updateNestedUser(
      List<UserModel> users, List<int> path, UserModel updatedUser) {
    if (path.isEmpty) return;

    if (path.length == 1) {
      users[path.first] = updatedUser;
    } else {
      _updateNestedUser(
        users[path.first].children,
        path.sublist(1),
        updatedUser,
      );
    }
  }
}
