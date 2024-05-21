part of 'login_bloc.dart';

sealed class LogInEvent extends Equatable {
  const LogInEvent();

  @override
  List<Object> get props => [];
}

final class EmailChanged extends LogInEvent {
  const EmailChanged({
    required this.email,
  });

  final String email;

  @override
  List<Object> get props => [email];
}

final class PasswordChanged extends LogInEvent {
  const PasswordChanged({
    required this.password
  });

  final String password;

  @override
  List<Object> get props => [password];
}

class FormSubmitted extends LogInEvent { }

class LogInFailed extends LogInEvent{
  final Exception exception;
  LogInFailed(this.exception);
}