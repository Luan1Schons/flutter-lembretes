// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lembretes_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LembretesController on _LembretesControllerBase, Store {
  late final _$lembreteListAtom =
      Atom(name: '_LembretesControllerBase.lembreteList', context: context);

  @override
  ObservableList<LembreteModel> get lembreteList {
    _$lembreteListAtom.reportRead();
    return super.lembreteList;
  }

  @override
  set lembreteList(ObservableList<LembreteModel> value) {
    _$lembreteListAtom.reportWrite(value, super.lembreteList, () {
      super.lembreteList = value;
    });
  }

  late final _$_LembretesControllerBaseActionController =
      ActionController(name: '_LembretesControllerBase', context: context);

  @override
  dynamic addLembrete(LembreteModel model) {
    final _$actionInfo = _$_LembretesControllerBaseActionController.startAction(
        name: '_LembretesControllerBase.addLembrete');
    try {
      return super.addLembrete(model);
    } finally {
      _$_LembretesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(LembreteModel model) {
    final _$actionInfo = _$_LembretesControllerBaseActionController.startAction(
        name: '_LembretesControllerBase.removeItem');
    try {
      return super.removeItem(model);
    } finally {
      _$_LembretesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
lembreteList: ${lembreteList}
    ''';
  }
}
