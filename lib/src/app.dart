import 'package:flutter/material.dart';
import 'routes/main_routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = MainRoutes.routes;
    return MaterialApp(
      initialRoute: '/',
      routes: routes,
    );
  }
}
