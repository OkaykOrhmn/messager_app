part of 'auth_bloc.dart';

sealed class AuthEvent {}

class RegisterUser extends AuthEvent {
  final User user;

  RegisterUser({required this.user});
}

class ProfileUser extends AuthEvent {}
