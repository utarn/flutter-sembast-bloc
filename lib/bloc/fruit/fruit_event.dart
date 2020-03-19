import 'dart:async';
import 'dart:developer' as developer;
import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import './index.dart';
import '../../data/fruit.dart';
import '../../data/fruit_dao.dart';

@immutable
abstract class FruitEvent extends Equatable {
  final FruitDao _fruitRepository = FruitDao();
  Stream<FruitState> applyAsync({FruitState currentState, FruitBloc bloc});
}

class LoadFruits extends FruitEvent {
  @override
  List<Object> get props => null;

  @override
  Stream<FruitState> applyAsync(
      {FruitState currentState, FruitBloc bloc}) async* {
    final fruits = await _fruitRepository.getAllSortedByName();
    yield FruitsLoaded(fruits);
  }
}

class AddRandomFruit extends FruitEvent {
  @override
  List<Object> get props => null;

  @override
  Stream<FruitState> applyAsync(
      {FruitState currentState, FruitBloc bloc}) async* {
    final newFruit = RandomFruitGenerator.getRandomFruit();
    _fruitRepository.insert(newFruit);
    final fruits = await _fruitRepository.getAllSortedByName();
    yield FruitsLoaded(fruits);
  }
}

class UpdateWithRandomFruit extends FruitEvent {
  final Fruit updatedFruit;

  UpdateWithRandomFruit(this.updatedFruit);
  @override
  List<Object> get props => [updatedFruit];

  @override
  Stream<FruitState> applyAsync(
      {FruitState currentState, FruitBloc bloc}) async* {
    final newFruit = RandomFruitGenerator.getRandomFruit();
    newFruit.id = updatedFruit.id;
    _fruitRepository.update(newFruit);
    final fruits = await _fruitRepository.getAllSortedByName();
    yield FruitsLoaded(fruits);
  }
}

class DeleteFruit extends FruitEvent {
  final Fruit fruit;

  DeleteFruit(this.fruit);
  @override
  List<Object> get props => [fruit];

  @override
  Stream<FruitState> applyAsync(
      {FruitState currentState, FruitBloc bloc}) async* {
    await _fruitRepository.delete(fruit);
    final fruits = await _fruitRepository.getAllSortedByName();
    yield FruitsLoaded(fruits);
  }
}

class RandomFruitGenerator {
  static final _fruits = [
    Fruit(name: 'Banana', isSweet: true),
    Fruit(name: 'Strawberry', isSweet: true),
    Fruit(name: 'Kiwi', isSweet: false),
    Fruit(name: 'Apple', isSweet: true),
    Fruit(name: 'Pear', isSweet: true),
    Fruit(name: 'Lemon', isSweet: false),
  ];

  static Fruit getRandomFruit() {
    return _fruits[Random().nextInt(_fruits.length)];
  }
}
