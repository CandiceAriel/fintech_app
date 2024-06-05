import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'receipient.g.dart';

@JsonSerializable()
final class Receipient extends Equatable {
  Receipient({
    required this.id,
    required this.detail,
    required this.name,
    required this.address,
    required this.bank,
    required this.bank_account_number,
    required this.relationship,
    required this.contact,
    required this.employer_name,
    required this.tin_ss_gsis  
  });

  static final empty = Receipient(
    id: 'lorem ipsum',
    detail: 'lorem ipsum',
    name: 'lorem ipsum',
    address: 'lorem ipsum',
    bank: 'lorem ipsum',
    bank_account_number: 'lorem ipsum',
    relationship: 'lorem ipsum',
    contact: 'lorem ipsum',
    employer_name: 'lorem ipsum',
    tin_ss_gsis: 'lorem ipsum'
  );

  /// The current Loan's id.
  String id;
  String detail;
  String name;
  String address;
  String bank;
  String bank_account_number;
  String relationship;
  String contact;
  String employer_name;
  String tin_ss_gsis;

  @override
  List<Object?> get props => [id, detail, name, address, bank, bank_account_number, relationship, contact, employer_name, tin_ss_gsis];

  factory Receipient.fromJson(Map<String, dynamic> json) => _$ReceipientFromJson(json);
  Map<String, dynamic> toJson() => _$ReceipientToJson(this);

   Receipient copyWith({
    String? id,
    String? detail,
    String? name,
    String? address,
    String? bank,
    String? bank_account_number,
    String? relationship,
    String? contact,
    String? employer_name,
    String? tin_ss_gsis
  }) {
    return Receipient(
      id: id ?? this.id,
      detail: detail ?? this.detail,
      name: name ?? this.name,
      address: address ?? this.address,
      bank: bank ?? this.bank,
      bank_account_number: bank_account_number ?? this.bank_account_number,
      relationship: relationship ?? this.relationship,
      contact: contact ?? this.contact,
      employer_name: employer_name ?? this.employer_name,
      tin_ss_gsis: tin_ss_gsis ?? this.tin_ss_gsis,
    );
  }
}