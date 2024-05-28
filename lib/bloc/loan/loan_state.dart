part of 'loan_bloc.dart';

enum LoanStatus { initial, success, failure }

final class LoanState extends Equatable {
  LoanState({
    this.status = LoanStatus.initial,
    this.loans = const [],
    Loan? loan,
  }) : loan = loan ?? Loan.empty ;

  final LoanStatus status;
  final Loan loan;
  final List<Loan> loans;

  LoanState copyWith({
    LoanStatus? status,
    Loan? loan,
    List<Loan>? loans,
  }) {
    return LoanState(
      status: status ?? this.status,
      loan: loan ?? this.loan,
      loans: loans ?? this.loans,
    );
  }

  
  @override
  List<Object> get props => [status,loans,loan];
}

final class LoanInitial extends LoanState {}
