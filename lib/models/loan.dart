import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

/// {@template Loan}
/// Loan model
///
/// [Loan.empty] represents an unauthenticated Loan.
/// {@endtemplate}
/// 
part 'loan.g.dart';

@JsonSerializable()
final class Loan extends Equatable {
  /// {@macro Loan}
  Loan({
    required this.id,
    required this.date,
    required this.status,
    required this.due,
    required this.amount,
    required this.principal,
    required this.interest,
    required this.adminfee,
    required this.otherfees,
    required this.paymentMethod  
  });

  static final empty = Loan(
    id: '00067823498',
    date: '1 Jan 2024',
    status: 'Active',
    due: '1 Feb 2024',
    amount: '\$ 10,000',
    principal: '\$ 10,000',
    interest: '\$ 10,000',
    adminfee: '\$ 10,000',
    otherfees: '\$ 10,000',
    paymentMethod: 'DEF Bank'
  );

  /// The current Loan's id.
  String id;
  String date;
  String status;
  String due;
  String amount;
  String principal;
  String interest;
  String adminfee;
  String otherfees;
  String paymentMethod;

  @override
  List<Object?> get props => [id, date, status, due, amount, principal, interest, adminfee, otherfees, paymentMethod];

  factory Loan.fromJson(Map<String, dynamic> json) => _$LoanFromJson(json);
  Map<String, dynamic> toJson() => _$LoanToJson(this);

   Loan copyWith({
    String? id,
    String? date,
    String? status,
    String? due,
    String? amount,
    String? principal,
    String? interest,
    String? adminfee,
    String? otherfees,
    String? paymentMethod
  }) {
    return Loan(
      id: id ?? this.id,
      date: date ?? this.date,
      status: status ?? this.status,
      due: due ?? this.due,
      amount: amount ?? this.amount,
      principal: principal ?? this.principal,
      interest: interest ?? this.interest,
      adminfee: adminfee ?? this.adminfee,
      otherfees: otherfees ?? this.otherfees,
      paymentMethod: paymentMethod ?? this.paymentMethod,
    );
  }
}