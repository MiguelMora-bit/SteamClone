import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:steam/dio/dio.dart';
import 'package:steam/providers/featured_provider.dart';
import 'package:steam/providers/search_provider.dart';
import 'package:steam/providers/sidemenu_provider.dart';

import 'package:steam/router/router.dart';
import 'package:steam/services/navigation_service.dart';
import 'package:steam/ui/layouts/home_layout.dart';

void main() {
  Flurorouter.configureRoutes();
  Api.configureDio();
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(lazy: false, create: (_) => SideMenuProvider()),
        ChangeNotifierProvider(lazy: false, create: (_) => SearchProvider()),
        ChangeNotifierProvider(lazy: false, create: (_) => FeatureProvider()),
      ],
      child: const MainApp(),
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      title: 'Welcome to Steam',
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: NavigationService.navigatorKey,
      builder: (_, child) {
        return HomeLayout(child: child!);
      },
    );
  }
}
