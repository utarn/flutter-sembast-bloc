// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    json['name'] as String,
    json['age'] as int,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
    };

_$UserFirebase _$_$UserFirebaseFromJson(Map<String, dynamic> json) {
  return _$UserFirebase(
    json['id'] as String,
    json['name'] as String,
    json['age'] as int,
  );
}

Map<String, dynamic> _$_$UserFirebaseToJson(_$UserFirebase instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
    };
