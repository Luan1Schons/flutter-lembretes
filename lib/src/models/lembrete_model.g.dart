// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lembrete_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LembreteModel on _LembreteModelBase, Store {
  late final _$titleAtom =
      Atom(name: '_LembreteModelBase.title', context: context);

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  late final _$descriptionAtom =
      Atom(name: '_LembreteModelBase.description', context: context);

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  late final _$checkboxAtom =
      Atom(name: '_LembreteModelBase.checkbox', context: context);

  @override
  bool get checkbox {
    _$checkboxAtom.reportRead();
    return super.checkbox;
  }

  @override
  set checkbox(bool value) {
    _$checkboxAtom.reportWrite(value, super.checkbox, () {
      super.checkbox = value;
    });
  }

  late final _$_LembreteModelBaseActionController =
      ActionController(name: '_LembreteModelBase', context: context);

  @override
  dynamic setTitle(String value) {
    final _$actionInfo = _$_LembreteModelBaseActionController.startAction(
        name: '_LembreteModelBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_LembreteModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDescription(String value) {
    final _$actionInfo = _$_LembreteModelBaseActionController.startAction(
        name: '_LembreteModelBase.setDescription');
    try {
      return super.setDescription(value);
    } finally {
      _$_LembreteModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheckbox(bool value) {
    final _$actionInfo = _$_LembreteModelBaseActionController.startAction(
        name: '_LembreteModelBase.setCheckbox');
    try {
      return super.setCheckbox(value);
    } finally {
      _$_LembreteModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
description: ${description},
checkbox: ${checkbox}
    ''';
  }
}
