import 'package:equatable/equatable.dart';

class UserAccount extends Equatable {
  final String? uid;
  final String? imageUrl;
  final Map<String, dynamic> data;

  const UserAccount({this.uid, this.imageUrl, required this.data});

  UserAccount copyWith({
    String? uid,
    String? imageUrl,
    Map<String, dynamic>? data,
  }) =>
      UserAccount(
        uid: uid ?? this.uid,
        imageUrl: imageUrl ?? this.imageUrl,
        data: data ?? this.data,
      );

  @override
  List<Object?> get props => [
        uid,
        imageUrl,
        data,
      ];
}
