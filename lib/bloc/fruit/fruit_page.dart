import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_freezed/bloc/fruit/index.dart';

class FruitPage extends StatefulWidget {
  static const String routeName = '/fruit';

  @override
  _FruitPageState createState() => _FruitPageState();
}

class _FruitPageState extends State<FruitPage> {
  @override
  Widget build(BuildContext context) {
    //ignore: close_sinks
    final _fruitBloc = BlocProvider.of<FruitBloc>(context);
    return FruitScreen(fruitBloc: _fruitBloc);
  }
}
