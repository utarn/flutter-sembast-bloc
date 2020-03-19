import 'dart:async';
import 'dart:developer' as developer;

import 'package:bloc/bloc.dart';
import 'index.dart';

class FruitBloc extends Bloc<FruitEvent, FruitState> {
  // todo: check singleton for logic in project
  //ignore: close_sinks
  static final FruitBloc _fruitBlocSingleton = FruitBloc._internal();
  factory FruitBloc() {
    return _fruitBlocSingleton;
  }
  FruitBloc._internal();

  @override
  Future<void> close() async {
    // dispose objects
    await super.close();
  }

  @override
  FruitState get initialState => FruitsLoading();

  @override
  Stream<FruitState> mapEventToState(
    FruitEvent event,
  ) async* {
    try {
      yield* event.applyAsync(currentState: state, bloc: this);
    } catch (_, stackTrace) {
      developer.log('$_', name: 'FruitBloc', error: _, stackTrace: stackTrace);
      yield state;
    }
  }
}
