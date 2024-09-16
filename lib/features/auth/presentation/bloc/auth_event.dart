part of 'auth_bloc.dart';

abstract class AuthEvent {}

class LoginEvent extends AuthEvent {
  String email;
  String password;

  LoginEvent(this.email, this.password);
}

class SignUpEvent extends AuthEvent {
  SignUpDataEntity entity;

  SignUpEvent(this.entity);
}
