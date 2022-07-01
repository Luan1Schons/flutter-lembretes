import 'package:application/src/models/lembrete_model.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '/src/lembretes/lembretes_controller.dart';

class AddItemView extends StatelessWidget {
  AddItemView({Key? key}) : super(key: key);
  final lembretesController = GetIt.I.get<LembretesController>();

  var model = LembreteModel(title: '', description: '', checkbox: false);

  final TitleFieldController = TextEditingController();
  final DescriptionFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Item'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Voltar',
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(16.0),
                child: Builder(builder: (context) {
                  return Column(
                    children: [
                      const Center(child: Text('Adicionar um Lembrete:')),
                      TextFormField(
                        controller: TitleFieldController,
                        cursorColor: Theme.of(context).cursorColor,
                        maxLength: 20,
                        decoration: const InputDecoration(
                          labelText: 'Título',
                          labelStyle: TextStyle(
                            color: Colors.blue,
                          ),
                          helperText: 'Título do lembrete',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 16)),
                      TextFormField(
                        controller: DescriptionFieldController,
                        maxLines: 3,
                        cursorColor: Theme.of(context).cursorColor,
                        maxLength: 200,
                        decoration: const InputDecoration(
                          labelText: 'Descrição',
                          labelStyle: TextStyle(
                            color: Colors.blue,
                          ),
                          helperText: 'Descricao do lembrete',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 26)),
                      ElevatedButton.icon(
                        onPressed: () {
                          model.setTitle(TitleFieldController.text);
                          model.setDescription(DescriptionFieldController.text);
                          model.setCheckbox(false);

                          lembretesController.addLembrete(model);
                          Navigator.pushReplacementNamed(context, '/');
                        },
                        icon: const Icon(Icons.add, size: 18),
                        label: const Text("Salvar Lembrete"),
                      )
                    ],
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
