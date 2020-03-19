// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return _User.fromJson(json);
    case 'firebase':
      return UserFirebase.fromJson(json);

    default:
      throw FallThroughError();
  }
}

mixin _$User {
  String get name;
  int get age;

  User copyWith({String name, int age});

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String name, int age), {
    @required Result firebase(String id, String name, int age),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String name, int age), {
    Result firebase(String id, String name, int age),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_User value), {
    @required Result firebase(UserFirebase value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_User value), {
    Result firebase(UserFirebase value),
    @required Result orElse(),
  });

  Map<String, dynamic> toJson();
}

@JsonSerializable()
class _$_User implements _User {
  const _$_User(this.name, this.age)
      : assert(name != null),
        assert(age != null);

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'User(name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(age);

  @override
  _$_User copyWith({
    Object name = freezed,
    Object age = freezed,
  }) {
    return _$_User(
      name == freezed ? this.name : name as String,
      age == freezed ? this.age : age as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String name, int age), {
    @required Result firebase(String id, String name, int age),
  }) {
    assert($default != null);
    assert(firebase != null);
    return $default(name, age);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String name, int age), {
    Result firebase(String id, String name, int age),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(name, age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_User value), {
    @required Result firebase(UserFirebase value),
  }) {
    assert($default != null);
    assert(firebase != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_User value), {
    Result firebase(UserFirebase value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class _User implements User {
  const factory _User(String name, int age) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get name;
  @override
  int get age;

  @override
  _User copyWith({String name, int age});
}

@JsonSerializable()
class _$UserFirebase implements UserFirebase {
  const _$UserFirebase(this.id, this.name, this.age)
      : assert(id != null),
        assert(name != null),
        assert(age != null);

  factory _$UserFirebase.fromJson(Map<String, dynamic> json) =>
      _$_$UserFirebaseFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'User.firebase(id: $id, name: $name, age: $age)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserFirebase &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(age);

  @override
  _$UserFirebase copyWith({
    Object id = freezed,
    Object name = freezed,
    Object age = freezed,
  }) {
    return _$UserFirebase(
      id == freezed ? this.id : id as String,
      name == freezed ? this.name : name as String,
      age == freezed ? this.age : age as int,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(String name, int age), {
    @required Result firebase(String id, String name, int age),
  }) {
    assert($default != null);
    assert(firebase != null);
    return firebase(id, name, age);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(String name, int age), {
    Result firebase(String id, String name, int age),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firebase != null) {
      return firebase(id, name, age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_User value), {
    @required Result firebase(UserFirebase value),
  }) {
    assert($default != null);
    assert(firebase != null);
    return firebase(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_User value), {
    Result firebase(UserFirebase value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (firebase != null) {
      return firebase(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserFirebaseToJson(this)..['runtimeType'] = 'firebase';
  }
}

abstract class UserFirebase implements User {
  const factory UserFirebase(String id, String name, int age) = _$UserFirebase;

  factory UserFirebase.fromJson(Map<String, dynamic> json) =
      _$UserFirebase.fromJson;

  String get id;
  @override
  String get name;
  @override
  int get age;

  @override
  UserFirebase copyWith({String id, String name, int age});
}
