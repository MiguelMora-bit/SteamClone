import 'package:fluro/fluro.dart';
import 'package:steam/router/details_handlers.dart';
import 'package:steam/router/search_handlers.dart';

import 'home_handlers.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static String rootRoute = '/';

  // Home Router
  static String homeRoute = '/home';

  //Details Router
  static String details = '/details/:appId';

  //Search Router

  static String search = '/search';

  static void configureRoutes() {
    // Home Routes
    router.define(rootRoute,
        handler: HomeHandlers.home, transitionType: TransitionType.none);
    router.define(homeRoute,
        handler: HomeHandlers.home, transitionType: TransitionType.none);

    // Details Routes
    router.define(details,
        handler: DetailsHandlers.details, transitionType: TransitionType.none);

    // Search Routes
    router.define(search,
        handler: SearchHandlers.search, transitionType: TransitionType.none);

    // 404
    router.notFoundHandler = HomeHandlers.home;
  }
}
