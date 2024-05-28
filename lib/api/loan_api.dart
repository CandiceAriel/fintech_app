import 'package:fintech_app/models/loan.dart';

abstract class LoanApi {
  /// {@macro Loan_api}
  const LoanApi();

  /// Provides a [Stream] of all Loan.
  Stream<List<Loan>> getLoan();

  /// Saves a [Loan].
  ///
  /// If a [Loan] with the same id already exists, it will be replaced.
  Future<void> saveLoan(Loan loan);

  /// Deletes the `Loan` with the given id.
  ///
  /// If no `Loan` with the given id exists, a [LoanNotFoundException] error is
  /// thrown.
  Future<void> deleteLoan(String id);

  /// Deletes all completed Loan.
  ///
  /// Returns the number of deleted Loan.
  Future<int> clearCompleted();

  /// Sets the `isCompleted` state of all Loan to the given value.
  ///
  /// Returns the number of updated Loan.
  Future<int> completeAll({required bool isCompleted});

  /// Closes the client and frees up any resources.
  Future<void> close();
}

/// Error thrown when a [Loan] with a given id is not found.
class LoanNotFoundException implements Exception {}