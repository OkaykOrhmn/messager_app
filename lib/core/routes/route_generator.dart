import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messager_app/core/cubit/auth/auth_screens_index_cubit.dart';
import 'package:messager_app/core/routes/route_paths.dart';
import 'package:messager_app/ui/pages/auth/auth_page.dart';
import 'package:messager_app/ui/pages/home/home_page.dart';
import 'package:messager_app/ui/pages/splash_page.dart';

class RouteManager {
  Route<dynamic> destination(RouteSettings routeSettings) {
    switch (routeSettings.name.toString()) {
      case RoutePaths.splash:
        return _createRoute(const SplashPage());

      case RoutePaths.auth:
        return _createRoute(MultiBlocProvider(providers: [
          BlocProvider<AuthScreensIndexCubit>(
              create: (context) => AuthScreensIndexCubit())
        ], child: const AuthPage()));

      case RoutePaths.home:
        return _createRoute(const HomePage());

      default:
        return _createRoute(const Center(
          child: Text('Route Not Set'),
        ));
    }
  }

  Route _createRoute(dynamic page) {
    return CupertinoPageRoute(builder: (context) {
      return page;
    });
  }
}
