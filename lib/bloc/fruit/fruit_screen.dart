import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/fruit.dart';
import 'index.dart';

class FruitScreen extends StatefulWidget {
  FruitScreen({Key key, @required fruitBloc})
      : _fruitBloc = fruitBloc,
        super(key: key);

  //ignore: close_sinks
  final FruitBloc _fruitBloc;

  @override
  FruitScreenState createState() {
    return FruitScreenState();
  }
}

class FruitScreenState extends State<FruitScreen> {
  FruitScreenState();

  @override
  void initState() {
    super.initState();
    this._load();
  }

  @override
  void dispose() {
    super.dispose();
    widget._fruitBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fruit App'),
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            widget._fruitBloc.add(AddRandomFruit());
          }),
    );
  }

  Widget _buildBody() {
    return BlocBuilder<FruitBloc, FruitState>(
        bloc: widget._fruitBloc,
        builder: (context, currentState) {
          if (currentState is FruitsLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (currentState is FruitsLoaded) {
            return ListView.builder(
                itemCount: currentState.fruits.length,
                itemBuilder: (context, index) {
                  final displayedFruit = currentState.fruits[index];
                  return ListTile(
                    title: Text(displayedFruit.name),
                    subtitle: Text(
                        displayedFruit.isSweet ? 'Very sweet' : 'Soor sour!'),
                    trailing: _buildUpdateDeleteButton(displayedFruit),
                  );
                });
          }
        });
  }

  Widget _buildUpdateDeleteButton(Fruit fruit) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {
            widget._fruitBloc.add(UpdateWithRandomFruit(fruit));
          },
        ),
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            widget._fruitBloc.add(DeleteFruit(fruit));
          },
        )
      ],
    );
  }

  void _load() {
    widget._fruitBloc.add(LoadFruits());
  }
}
