import 'package:application/src/testemobx/testemobx_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class TesteMobx extends StatelessWidget {
  TesteMobx({Key? key}) : super(key: key);

  final testeMobxController = GetIt.I.get<TesteMobxController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste Mobx'),
      ),
      body: Center(
        child: Observer(
          builder: (_) {
            return Text('Contador = ${testeMobxController.counter}');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          testeMobxController.increment();
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
    );
  }
}
