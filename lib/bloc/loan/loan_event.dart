part of 'loan_bloc.dart';

sealed class LoanEvent extends Equatable {
  const LoanEvent();

  @override
  List<Object> get props => [];
}

final class PaymentMethodChanged extends LoanEvent {
  const PaymentMethodChanged({
    required this.selectedMethod,
  });

  final String selectedMethod;

  @override
  List<Object> get props => [selectedMethod];
}

final class DetaiilFetched extends LoanEvent {}

class FormSubmitted extends LoanEvent { }