import 'package:mobx/mobx.dart';
part 'lembrete_model.g.dart';

class LembreteModel = _LembreteModelBase with _$LembreteModel;

abstract class _LembreteModelBase with Store {
  _LembreteModelBase(
      {required this.title, required this.description, required this.checkbox});

  @observable
  String title;

  @observable
  String description;

  @observable
  bool checkbox = false;

  @action
  setTitle(String value) => title = value;

  @action
  setDescription(String value) => description = value;

  @action
  setCheckbox(bool value) => checkbox = value;
}
