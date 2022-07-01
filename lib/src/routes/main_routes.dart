import 'package:flutter/cupertino.dart';

import '../homepage/homepage_view.dart' as home_page;
import '../additem/add_item_view.dart' as add_item;
import '../testemobx/testemobx_page.dart' as testemobx;

class MainRoutes extends Widget {
  static final ValueNotifier<Map> _lembretes = ValueNotifier<Map>({});

  static Map<String, Widget Function(BuildContext context)> routes = {
    '/': (context) => const home_page.HomePageView(),
    '/additem': (context) => add_item.AddItemView(),
    '/testemobx': (context) => testemobx.TesteMobx(),
  };

  const MainRoutes({Key? key}) : super(key: key);

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }
}
