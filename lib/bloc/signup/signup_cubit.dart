// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:formz/formz.dart';
// import 'package:sparrow_app/bloc/signup/signup_state.dart';
// import 'package:sparrow_app/constants.dart';
// import 'package:sparrow_app/models/email.dart';
// import 'package:sparrow_app/models/password.dart';
// import 'package:sparrow_app/services/auth_service.dart';

// class SignUpCubit extends Cubit<SignUpState> {
//   SignUpCubit(this._authService) : super(const SignUpState());

//   final AuthService _authService;
//   final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

//   void emailChanged(String value) {
//     final email = Email.dirty(value);
//     emit(
//       state.copyWith(
//         email: email,
//         isValid: Formz.validate([
//           email,
//           state.password,
//         ]),
//       ),
//     );
//   }

//   void passwordChanged(String value) {
//     final password = Password.dirty(value);
//     emit(
//       state.copyWith(
//         password: password,
//         isValid: Formz.validate([
//           state.email,
//           password,
//         ]),
//       ),
//     );
//   }

//   Future<void> signUpFormSubmitted() async {
//     emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
//     try {
//       await _authService.signUp(
//         email: state.email.value, 
//         password: state.password.value
//       );
//       emit(state.copyWith(
//         status: FormzSubmissionStatus.success,
//         isSuccess: true
//       ));
//       print('status: $state');
//     } on SignUpFailure catch (e) {
//       emit(state.copyWith(
//         errorMessage: e.message,
//         status: FormzSubmissionStatus.failure
//       ));
//     } catch (_) {
//       emit(state.copyWith(status: FormzSubmissionStatus.failure));
//     }
//   }
// }