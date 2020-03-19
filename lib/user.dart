import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User(String name, int age) = _User;
  const factory User.firebase(String id, String name, int age) = UserFirebase;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
