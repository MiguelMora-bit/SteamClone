import 'package:fluro/fluro.dart';
import 'package:steam/ui/views/SearchView/search_view.dart';

class SearchHandlers {
  static Handler search = Handler(handlerFunc: (context, params) {
    // final authProvider = Provider.of<AuthProvider>(context!);

    // if (authProvider.authStatus == AuthStatus.notAuthenticated)
    return const SearchView();
    // else
    // return DashboardView();
  });
}
