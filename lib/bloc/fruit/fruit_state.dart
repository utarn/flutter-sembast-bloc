import 'package:equatable/equatable.dart';

import '../../data/fruit.dart';

abstract class FruitState extends Equatable {}

class FruitsLoading extends FruitState {
  @override
  List<Object> get props => null;
}

class FruitsLoaded extends FruitState {
  final List<Fruit> fruits;

  FruitsLoaded(this.fruits);

  @override
  List<Object> get props => [fruits];
}
