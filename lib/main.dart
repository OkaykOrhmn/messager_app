import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messager_app/core/bloc/auth/auth_bloc.dart';
import 'package:messager_app/core/routes/route_generator.dart';
import 'package:messager_app/core/routes/route_paths.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<AuthBloc>(
      create: (context) => AuthBloc(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Messager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: false,
      ),
      initialRoute: RoutePaths.splash,
      onGenerateRoute: (settings) => RouteManager().destination(settings),
    );
  }
}
