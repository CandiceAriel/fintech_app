part of 'loan_bloc.dart';

enum LoanStatus { initial, success, failure }

final class LoanState extends Equatable {
  LoanState({
    this.status = LoanStatus.initial,
    //this.loans = const [],
    Loan? loan,
    Receipient? receipient
  }) : loan = loan ?? Loan.empty, 
        receipient = receipient ?? Receipient.empty 
  ;

  final LoanStatus status;
  final Loan loan;
  final Receipient receipient;
  //final List<Loan> loans;

  LoanState copyWith({
    LoanStatus? status,
    Loan? loan,
    Receipient? receipient,
    //List<Loan>? loans,
  }) {
    return LoanState(
      status: status ?? this.status,
      loan: loan ?? this.loan,
      receipient: receipient ?? this.receipient,
      //loans: loans ?? this.loans,
    );
  }

  
  @override
  List<Object> get props => [
    status,
    //loans,
    loan, 
    receipient
  ];
}

final class LoanInitial extends LoanState {}
