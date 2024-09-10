class UserModel{
  final int userId;
  final int id;
  final String title;
  UserModel({
    required this.userId,
    required this.id,
    required this.title
  });
  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"]
  );
}