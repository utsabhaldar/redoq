class UserModel {
  final String name;
  final int age;
  final List<UserModel> children;

  UserModel({required this.name, required this.age, this.children = const []});

  UserModel copyWith({String? name, int? age, List<UserModel>? children}) {
    return UserModel(
      name: name ?? this.name,
      age: age ?? this.age,
      children: children ?? this.children,
    );
  }
}
