// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messager_app/core/bloc/auth/auth_bloc.dart';
import 'package:messager_app/core/routes/route_paths.dart';
import 'package:messager_app/core/services/socket_services.dart';
import 'package:messager_app/data/storage/token.dart';
import 'package:messager_app/main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var socketService = SocketService();
  var socketMessage = '';

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 2400));
      final token = await getToken();
      if (kDebugMode) {
        print("token: $token");
      }
      if (token.isEmpty) {
        Future.delayed(
          Duration.zero,
          () =>
              navigatorKey.currentState!.pushReplacementNamed(RoutePaths.auth),
        );
      } else {
        Future.delayed(
            Duration.zero, () => context.read<AuthBloc>().add(ProfileUser()));
      }
    });

    // socketService.connectAndListen();

    // socketService.onLoginEvent = (data) => {
    //       setState(() {
    //         socketMessage = data;
    //       })
    //     };

    // socketService.onLogoutEvent = (data) => {
    //       setState(() {
    //         socketMessage = data;
    //       })
    //     };

    // socketService.onNewMessageEvent = (data) => print(data);

    // socketService.joinSession('kia');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            navigatorKey.currentState!.pushReplacementNamed(RoutePaths.home);
          } else if (state is AuthFail) {
            navigatorKey.currentState!.pushReplacementNamed(RoutePaths.auth);
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
