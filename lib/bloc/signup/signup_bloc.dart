import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:fintech_app/models/email.dart';
import 'package:fintech_app/models/password.dart';
import 'package:fintech_app/services/auth_service.dart';

part 'signup_state.dart';
part 'signup_event.dart';

class SignupBloc extends Bloc<SignUpEvent, SignUpState> {
  SignupBloc({
    required AuthService authRepo,
  })  : _authRepo = authRepo,
        super(const SignUpState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<FormSubmitted>(_onSubmitted);
  }

  final AuthService _authRepo;

  void _onEmailChanged(
    EmailChanged event,
    Emitter<SignUpState> emit,
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
    Emitter<SignUpState> emit,
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
    Emitter<SignUpState> emit,
  ) async {
      try {
      await _authRepo.signUp(
        email: state.email.value, 
        password: state.password.value
      );
      emit(state.copyWith(
        status: FormzSubmissionStatus.success,
        isSuccess: true
      ));
      print('status: $state');
    } on LogInFailure catch (e) {
      emit(state.copyWith(
        status: FormzSubmissionStatus.failure,
        errorMessage: e.message
      ));
      print('Authentication Failed because ${e.message}');
    }catch (_) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }
}