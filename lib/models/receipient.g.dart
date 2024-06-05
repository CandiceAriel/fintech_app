// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Receipient _$ReceipientFromJson(Map<String, dynamic> json) => Receipient(
      id: json['id'] as String,
      detail: json['detail'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      bank: json['bank'] as String,
      bank_account_number: json['bank_account_number'] as String,
      relationship: json['relationship'] as String,
      contact: json['contact'] as String,
      employer_name: json['employer_name'] as String,
      tin_ss_gsis: json['tin_ss_gsis'] as String,
    );

Map<String, dynamic> _$ReceipientToJson(Receipient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'detail': instance.detail,
      'name': instance.name,
      'address': instance.address,
      'bank': instance.bank,
      'bank_account_number': instance.bank_account_number,
      'relationship': instance.relationship,
      'contact': instance.contact,
      'employer_name': instance.employer_name,
      'tin_ss_gsis': instance.tin_ss_gsis,
    };
