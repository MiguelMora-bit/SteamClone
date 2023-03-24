import 'package:fluro/fluro.dart';
import 'package:steam/ui/views/homeView/home_view.dart';

class HomeHandlers {
  static Handler home = Handler(handlerFunc: (context, params) {
    // final authProvider = Provider.of<AuthProvider>(context!);

    // if (authProvider.authStatus == AuthStatus.notAuthenticated)
    return const HomeView();
    // else
    // return DashboardView();
  });
}
