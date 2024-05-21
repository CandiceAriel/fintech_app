import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:fintech_app/models/email.dart';
import 'package:fintech_app/models/password.dart';
import 'package:fintech_app/models/user.dart';
import 'package:fintech_app/services/auth_service.dart';
part 'login_event.dart';
part 'login_state.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc({
    required AuthService authRepo,
  })  : _authRepo = authRepo,
        super(const LogInState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<FormSubmitted>(_onSubmitted);
  }

  final AuthService _authRepo;

  void _onEmailChanged(
    EmailChanged event,
    Emitter<LogInState> emit,
  ) {
    final email = Email.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        isValid: Formz.validate([
          email,
          state.password,
        ]),
      ),
    );
  }

  void _onPasswordChanged(
    PasswordChanged event,
    Emitter<LogInState> emit,
  ) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate([
          state.email,
          password,
        ]),
      ),
    );
  }

  Future<void> _onSubmitted(
    FormSubmitted event,
    Emitter<LogInState> emit,
  ) async {
    try {
      await _authRepo.logIn(
        email: state.email.value, 
        password: state.password.value
      );
      await Future.delayed(const Duration(milliseconds: 300));
      emit(state.copyWith(
        status: FormzSubmissionStatus.success,
        isSuccess: true
      ));
      print('Email : ${state.email.value}');
    } on LogInFailure catch (e) {
      emit(state.copyWith(
        status: FormzSubmissionStatus.failure,
        errorMessage: e.message
      ));
      print('Authentication Failed because ${e.message}');
    } catch (_) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
      print('Authentication Failed');
    }
  }
}
