// ignore_for_file: unused_catch_clause

import 'package:dio/dio.dart';
import 'package:messager_app/data/api/api_endpoints.dart';
import 'package:messager_app/data/api/dio_helper.dart';
import 'package:messager_app/data/model/register_model.dart';

class AuthRepository extends Auth {
  final DioHelper dioHelper;
  AuthRepository({required this.dioHelper});

  @override
  Future<RegisterModel> registerUser(User user) async {
    try {
      final response = await dioHelper.postRequest(
          url: ApiEndPoints.registerUser,
          data: {"username": user.username, "password": user.password});
      return RegisterModel.fromJson(response.data);
    } on DioException catch (e) {
      rethrow;
    }
  }

  @override
  Future<RegisterModel> profile() async {
    try {
      final response =
          await dioHelper.getRequest(url: ApiEndPoints.profileUser);
      return RegisterModel.fromJson(response.data);
    } on DioException catch (e) {
      rethrow;
    }
  }
}

abstract class Auth {
  Future<RegisterModel> registerUser(User user);
  Future<RegisterModel> profile();
}
