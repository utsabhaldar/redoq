import 'package:redoq/models/user_model.dart';

class UserRepository {
  final List<UserModel> _users = [
    UserModel(
      name: "Richard E. Meyer",
      age: 28,
      children: [
        UserModel(
          name: "Richard E. Meyer",
          age: 28,
          children: [
            UserModel(
              name: "Richard E. Meyer",
              age: 28,
              children: [
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
              ],
            ),
            UserModel(
              name: "Richard E. Meyer",
              age: 28,
              children: [
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
              ],
            ),
          ],
        ),
        UserModel(
          name: "Richard E. Meyer",
          age: 28,
          children: [
            UserModel(
              name: "Richard E. Meyer",
              age: 28,
              children: [
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
              ],
            ),
            UserModel(
              name: "Richard E. Meyer",
              age: 28,
              children: [
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    UserModel(
      name: "Stephanie S. Young",
      age: 28,
      children: [
        UserModel(
          name: "Richard E. Meyer",
          age: 28,
          children: [
            UserModel(
              name: "Richard E. Meyer",
              age: 28,
              children: [
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
              ],
            ),
            UserModel(
              name: "Richard E. Meyer",
              age: 28,
              children: [
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
              ],
            ),
          ],
        ),
        UserModel(
          name: "Richard E. Meyer",
          age: 28,
          children: [
            UserModel(
              name: "Richard E. Meyer",
              age: 28,
              children: [
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
              ],
            ),
            UserModel(
              name: "Richard E. Meyer",
              age: 28,
              children: [
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
                UserModel(
                  name: "Richard E. Meyer",
                  age: 28,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ];

  List<UserModel> fetchUsers() {
    return _users;
  }
}
