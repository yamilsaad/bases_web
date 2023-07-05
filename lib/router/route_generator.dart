import 'package:bases_web/UI/pages/page_404.dart';
import 'package:flutter/material.dart';

import '../UI/pages/counter_provider.dart';
import 'package:bases_web/UI/pages/counter_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return MaterialPageRoute(builder: (_) => CounterPage());
      case '/provider':
        return MaterialPageRoute(builder: (_) => CounterProvider());
      default:
        return MaterialPageRoute(builder: (_) => Page404());
    }

    return MaterialPageRoute(builder: (_) => CounterPage());
  }
}
