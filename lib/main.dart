import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redoq/blocs/details_bloc.dart';
import 'repositories/user_repository.dart';
import 'presentation/user_list_page.dart';

void main() {
  final userRepository = UserRepository();

  runApp(
    BlocProvider(
      create: (context) => UserBloc(userRepository)..add(LoadUsers()),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserListPage(),
    );
  }
}
