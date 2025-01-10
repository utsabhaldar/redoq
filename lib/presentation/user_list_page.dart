import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redoq/models/user_model.dart';
import 'package:redoq/widgets/user_item_widget.dart';
import '../blocs/details_bloc.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state.users.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return Column(
            children: [
              const SizedBox(height: 30),
              Expanded(
                child: SingleChildScrollView(
                  child: ExpansionTile(
                    title: const Text(
                      "Your Details",
                      style: TextStyle(fontSize: 20),
                    ),
                    iconColor: Colors.black,
                    collapsedShape: const Border(
                      bottom: BorderSide(color: Colors.white30),
                    ),
                    shape: const Border(
                      bottom: BorderSide(color: Colors.white30),
                    ),
                    initiallyExpanded: true,
                    children: _buildUserList(state.users, []),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  List<Widget> _buildUserList(List<UserModel> users, List<int> parentPath) {
    return users.asMap().entries.map((entry) {
      final index = entry.key;
      final user = entry.value;

      final currentPath = List<int>.from(parentPath)..add(index);

      return Padding(
        padding: const EdgeInsets.only(left: 15, right: 5),
        child: Column(
          children: [
            UserItemWidget(user: user, path: currentPath),
            // if (user.children.isNotEmpty)
            //   Padding(
            //     padding: const EdgeInsets.only(left: 15),
            //     child: ExpansionTile(
            //       title: Text(user.name, style: const TextStyle(fontSize: 18)),
            //       iconColor: Colors.black,
            //       initiallyExpanded: false,
            //       children: _buildUserList(user.children, currentPath),
            //     ),
            //   ),
          ],
        ),
      );
    }).toList();
  }
}
