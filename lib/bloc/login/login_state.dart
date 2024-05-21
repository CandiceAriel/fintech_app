part of 'login_bloc.dart';

class LogInState extends Equatable {
  const LogInState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.isSuccess = false, 
    this.isValid = false,
    this.errorMessage,
  });

  final Email email;
  final Password password;
  final FormzSubmissionStatus status;
  final bool isSuccess;
  final bool isValid;
  final String? errorMessage;

  @override
  List<Object?> get props => [
    email,
    password,
    status,
    isSuccess,
    isValid,
    errorMessage,
  ];

  LogInState copyWith({
    Email? email,
    Password? password,
    FormzSubmissionStatus? status,
    bool? isSuccess,
    bool? isValid,
    String? errorMessage,
  }) {
    return LogInState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      isSuccess: isSuccess ?? this.isSuccess,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
