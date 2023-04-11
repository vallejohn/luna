import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
class Account with _$Account{
  const factory Account({
    @Default('') String authID,
    @Default('') String profileImageURL,
    @Default('') String username,
    @Default('') String email,
    @Default('') String firstname,
    @Default('') String lastname,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
}