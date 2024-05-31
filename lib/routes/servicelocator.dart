import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());
}

class NavigationService {
  late GoRouter _router;

  set router(GoRouter router) {
    _router = router;
  }

  void navigateTo(String route) {
    _router.go(route);
  }
}
