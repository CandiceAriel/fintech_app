part of 'loan_bloc.dart';

sealed class LoanEvent extends Equatable {
  const LoanEvent();

  @override
  List<Object> get props => [];
}

final class DetaiilFetched extends LoanEvent {}