part of 'loan_bloc.dart';

enum LoanStatus { initial, success, failure }

final class LoanState extends Equatable {
  LoanState({
    this.status = LoanStatus.initial,
    Loan? loan,
    this.hasReachedMax = false,
  }) : loan = loan ?? Loan.empty ;

  final LoanStatus status;
  final Loan loan;
  final bool hasReachedMax;

  LoanState copyWith({
    LoanStatus? status,
    Loan? loans,
    bool? hasReachedMax,
  }) {
    return LoanState(
      status: status ?? this.status,
      loan: loans ?? this.loan,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  
  @override
  List<Object> get props => [loan];
}

final class LoanInitial extends LoanState {}
