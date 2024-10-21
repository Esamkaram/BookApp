part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginSuccessInitial extends LoginState {}

final class LoginErrorInitial extends LoginState {}
