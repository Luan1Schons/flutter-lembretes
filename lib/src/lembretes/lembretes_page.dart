import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import './lembretes_controller.dart';
import 'lembretes_widget.dart';

class Lembretes extends StatefulWidget {
  const Lembretes({Key? key}) : super(key: key);

  @override
  State<Lembretes> createState() => _LembretesState();
}

class _LembretesState extends State<Lembretes> {
  final lembretesController = GetIt.I.get<LembretesController>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Observer(
        builder: (_) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: lembretesController.lembreteList.length,
              itemBuilder: (_, index) {
                var item = lembretesController.lembreteList[index];
                return LembretesWidget(
                  item: item,
                  removeCallback: () {
                    lembretesController.removeItem(item);
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
