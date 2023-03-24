import 'package:fluro/fluro.dart';
import 'package:steam/ui/views/detailsView/details_view.dart';
import 'package:steam/ui/views/homeView/home_view.dart';

class DetailsHandlers {
  static Handler details = Handler(handlerFunc: (context, params) {
    if (params['appId']?.first != null) {
      return DetailsView(appId: params['appId']!.first);
    } else {
      return const HomeView();
    }
  });
}
