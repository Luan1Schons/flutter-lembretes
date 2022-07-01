import 'package:mobx/mobx.dart';
part 'testemobx_controller.g.dart';

class TesteMobxController = _TesteMobxControllerBase with _$TesteMobxController;

abstract class _TesteMobxControllerBase with Store {
  @observable
  int _counter = 0;

  get counter => _counter;

  @action
  increment() {
    _counter++;
  }
}
