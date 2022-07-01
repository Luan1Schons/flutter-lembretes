import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import './src/app.dart';
import '/src/lembretes/lembretes_controller.dart';
import '/src/testemobx/testemobx_controller.dart';

void main() async {
  GetIt getIt = GetIt.I;

  getIt.registerSingleton<LembretesController>(LembretesController());
  getIt.registerSingleton<TesteMobxController>(TesteMobxController());

  runApp(const App());
}
