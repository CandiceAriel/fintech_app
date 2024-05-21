part of 'signup_bloc.dart';

sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

final class EmailChanged extends SignUpEvent {
  const EmailChanged({
    required this.email,
  });

  final String email;

  @override
  List<Object> get props => [email];
}

final class PasswordChanged extends SignUpEvent {
  const PasswordChanged({
    required this.password
  });

  final String password;

  @override
  List<Object> get props => [password];
}

class FormSubmitted extends SignUpEvent { }