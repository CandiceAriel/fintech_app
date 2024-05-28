import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fintech_app/models/loan.dart';
import 'package:formz/formz.dart';

part 'loan_event.dart';
part 'loan_state.dart';

class LoanBloc extends Bloc<LoanEvent, LoanState> {
  LoanBloc() : super(LoanInitial()) {
    on<LoanEvent>((event, emit) {
      // TODO: implement event handler
       on<FormSubmitted>(_onSubmitted);
       on<PaymentMethodChanged>(_onPaymentMethodChanged);
    });
  }

   void _onPaymentMethodChanged(
    PaymentMethodChanged event,
    Emitter<LoanState> emit,
  ) {
    final selectedPayment = state.loan.paymentMethod;
    emit(
      state.copyWith(
        loan: state.loan.copyWith(
          paymentMethod: selectedPayment
        )
      ),
    );
    print(state.loan.paymentMethod);
  }

  Future<void> _onSubmitted(
    FormSubmitted event,
    Emitter<LoanState> emit,
  ) async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      emit(state.copyWith(
        status: LoanStatus.success,
        loan: state.loan.copyWith(
          id: '0',
          date: state.loan.date,
          status: state.loan.status,
          due: state.loan.due,
          amount: state.loan.amount,
          principal: state.loan.principal,
          interest: state.loan.interest,
          adminfee: state.loan.adminfee,
          otherfees: state.loan.otherfees,
          paymentMethod: state.loan.paymentMethod
        )
      ));
      print('Loan added');
    } catch (_) {
      emit(state.copyWith(status: LoanStatus.failure));
      print('Fail to Add');
    }
  }
}
