// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Loan _$LoanFromJson(Map<String, dynamic> json) => Loan(
      id: json['id'] as String,
      date: json['date'] as String,
      status: json['status'] as String,
      due: json['due'] as String,
      amount: json['amount'] as String,
      principal: json['principal'] as String,
      interest: json['interest'] as String,
      adminfee: json['adminfee'] as String,
      otherfees: json['otherfees'] as String,
    );

Map<String, dynamic> _$LoanToJson(Loan instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'status': instance.status,
      'due': instance.due,
      'amount': instance.amount,
      'principal': instance.principal,
      'interest': instance.interest,
      'adminfee': instance.adminfee,
      'otherfees': instance.otherfees,
    };
