// import 'package:get_it/get_it.dart';
// import 'package:go_router/go_router.dart';

// final getIt = GetIt.instance;

// void setupLocator() {
//   getIt.registerLazySingleton<NavigationService>(() => NavigationService());
// }

// class NavigationService {
//   late GoRouter _router;

//   set router(GoRouter router) {
//     _router = router;
//   }

//   void navigateTo(String route,{Object? extra}) {
//     _router.go(route,extra: extra);
//   }
// }

// //USE WHERE WE NEED THIS SERVICE LIKE DI (before build)
//   final NavigationService _navigationService = getIt<NavigationService>();
