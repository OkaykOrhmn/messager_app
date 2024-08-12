// ignore_for_file: unused_catch_clause

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messager_app/data/api/dio_helper.dart';
import 'package:messager_app/data/model/register_model.dart';
import 'package:messager_app/data/repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  static RegisterModel registerModel = RegisterModel();

  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is RegisterUser) {
        emit(AuthLoading());
        try {
          RegisterModel response = await AuthRepository(dioHelper: DioHelper())
              .registerUser(event.user);
          registerModel = response;
          emit(AuthSuccess(response: response));
        } on DioException catch (e) {
          emit(AuthFail());
        }
      }

      if (event is ProfileUser) {
        emit(AuthLoading());
        try {
          RegisterModel response =
              await AuthRepository(dioHelper: DioHelper()).profile();
          registerModel = response;
          emit(AuthSuccess(response: response));
        } on DioException catch (e) {
          emit(AuthFail());
        }
      }
    });
  }
}
