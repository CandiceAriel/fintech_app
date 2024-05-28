import 'package:fintech_app/api/loan_api.dart';
import 'package:fintech_app/models/loan.dart';

/// {@template Loan_repository}
/// A repository that handles `todo` related requests.
/// {@endtemplate}
class LoanRepository {
  /// {@macro Loan_repository}
  const LoanRepository({
    required LoanApi loanApi,
  }) : _loanApi = loanApi;

  final LoanApi _loanApi;

  /// Provides a [Stream] of all Loan.
  Stream<List<Loan>> getLoan() => _loanApi.getLoan();

  /// Saves a [loan].
  ///
  /// If a [loan] with the same id already exists, it will be replaced.
  Future<void> saveLoan(Loan loan) => _loanApi.saveLoan(loan);

  /// Deletes the `loan` with the given id.
  ///
  /// If no `loan` with the given id exists, a [LoanNotFoundException] error is
  /// thrown.
  Future<void> deleteLoan(String id) => _loanApi.deleteLoan(id);

  /// Deletes all completed Loan.
  ///
  /// Returns the number of deleted Loan.
  Future<int> clearCompleted() => _loanApi.clearCompleted();

  /// Sets the `isCompleted` state of all Loan to the given value.
  ///
  /// Returns the number of updated Loan.
  Future<int> completeAll({required bool isCompleted}) =>
      _loanApi.completeAll(isCompleted: isCompleted);
}