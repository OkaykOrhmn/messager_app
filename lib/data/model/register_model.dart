class RegisterModel {
  String? message;
  User? user;
  String? token;

  RegisterModel({this.message, this.user, this.token});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['token'] = token;
    return data;
  }
}

class User {
  int? id;
  String? username;
  String? gmail;
  String? password;
  String? profileImage;
  String? name;
  String? lastName;
  Null birthDay;
  Null gender;
  Null bio;
  String? createdAt;
  String? updatedAt;

  User(
      {this.id,
      this.username,
      this.gmail,
      this.password,
      this.profileImage,
      this.name,
      this.lastName,
      this.birthDay,
      this.gender,
      this.bio,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    gmail = json['gmail'];
    password = json['password'];
    profileImage = json['profileImage'];
    name = json['name'];
    lastName = json['lastName'];
    birthDay = json['birthDay'];
    gender = json['gender'];
    bio = json['bio'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['gmail'] = gmail;
    data['password'] = password;
    data['profileImage'] = profileImage;
    data['name'] = name;
    data['lastName'] = lastName;
    data['birthDay'] = birthDay;
    data['gender'] = gender;
    data['bio'] = bio;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}
