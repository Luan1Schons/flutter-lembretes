import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/lembrete_model.dart';

class LembretesWidget extends StatelessWidget {
  const LembretesWidget(
      {Key? key, required this.item, required this.removeCallback})
      : super(key: key);
  final LembreteModel item;

  final Function removeCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: item.checkbox,
        onChanged: (value) => {
          item.setCheckbox(false),
        },
      ),
      title: Text(item.title),
      subtitle: Text(item.description),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          removeCallback();
        },
      ),
    );
    ;
  }
}
