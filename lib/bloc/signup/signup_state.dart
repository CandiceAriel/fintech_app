// import 'package:formz/formz.dart';
// import 'package:equatable/equatable.dart';
// import 'package:sparrow_app/models/email.dart';
// import 'package:sparrow_app/models/password.dart';

part of 'signup_bloc.dart';

class SignUpState extends Equatable {
  const SignUpState({
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
    errorMessage
  ];

  SignUpState copyWith({
    Email? email,
    Password? password,
    FormzSubmissionStatus? status,
    bool? isSuccess,
    bool? isValid,
    String? errorMessage,
  }) {
    return SignUpState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      isSuccess: isSuccess ?? this.isSuccess,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
