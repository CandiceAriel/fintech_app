part of 'authentication_bloc.dart';

sealed class AuthenticationEvent {
  const AuthenticationEvent();
}

final class _AuthenticationStatusChanged extends AuthenticationEvent {
  const _AuthenticationStatusChanged(this.status);

  final AuthenticationStatus status;
}


final class _AuthenticationErrMsg extends AuthenticationEvent {
  const _AuthenticationErrMsg(this.errMsg);

  final _AuthenticationErrMsg errMsg;
}

final class AuthenticationLogoutRequested extends AuthenticationEvent {}