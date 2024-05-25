import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fintech_app/models/loan.dart';

part 'loan_event.dart';
part 'loan_state.dart';

class LoanBloc extends Bloc<LoanEvent, LoanState> {
  LoanBloc() : super(LoanInitial()) {
    on<LoanEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
