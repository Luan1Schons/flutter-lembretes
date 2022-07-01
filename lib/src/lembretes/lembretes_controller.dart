import 'package:mobx/mobx.dart';

import '../models/lembrete_model.dart';
part 'lembretes_controller.g.dart';

class LembretesController = _LembretesControllerBase with _$LembretesController;

abstract class _LembretesControllerBase with Store {
  @observable
  ObservableList<LembreteModel> lembreteList = [
    LembreteModel(
        title: 'Título 1', description: 'Descrição 1', checkbox: false),
    LembreteModel(
        title: 'Título 2', description: 'Descrição 2', checkbox: false),
    LembreteModel(
        title: 'Título 3', description: 'Descrição 3', checkbox: true),
  ].asObservable();

  @action
  addLembrete(LembreteModel model) {
    lembreteList.add(model);
  }

  @action
  removeItem(LembreteModel model) {
    lembreteList.removeWhere((element) => element.title == model.title);
  }
}
