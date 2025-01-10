import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redoq/blocs/details_bloc.dart';
import 'package:redoq/models/user_model.dart';
import 'package:redoq/widgets/custom_card.dart';
import '../presentation/update_user_page.dart';

class UserItemWidget extends StatelessWidget {
  final UserModel user;
  final List<int> path;

  const UserItemWidget({super.key, required this.user, required this.path});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15, right: 8),
          child: CustomCard(
            content: ExpansionTile(
              title: Text(
                user.name,
                style: const TextStyle(color: Colors.black54),
              ),
              subtitle: Text(
                "${user.age} Years Old",
                style: const TextStyle(color: Colors.black38),
              ),
              showTrailingIcon: true,
              iconColor: Colors.black54,
              collapsedShape: const Border(
                bottom: BorderSide(
                  color: Colors.white30,
                ),
              ),
              shape: const Border(
                bottom: BorderSide(
                  color: Colors.white30,
                ),
              ),
              children: user.children.asMap().entries.map((entry) {
                final childIndex = entry.key;
                final child = entry.value;
                return Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child:
                      UserItemWidget(user: child, path: [...path, childIndex]),
                );
              }).toList(),
            ),
          ),
        ),
        Positioned(
          top: 15,
          right: 50,
          child: IconButton(
            icon: const Icon(
              Icons.edit_square,
              size: 17,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                    value: BlocProvider.of<UserBloc>(context),
                    child: UpdateUserPage(user: user, path: path),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
