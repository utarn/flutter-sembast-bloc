import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

class Fruit extends Equatable {
  int id;

  final String name;
  final bool isSweet;

  Fruit({
    @required this.name,
    @required this.isSweet,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'isSweet': isSweet,
    };
  }

  static Fruit fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Fruit(
      name: map['name'],
      isSweet: map['isSweet'],
    );
  }

  String toJson() => json.encode(toMap());
  static Fruit fromJson(String source) => fromMap(json.decode(source));
  @override
  List<Object> get props => [name, isSweet];
}
