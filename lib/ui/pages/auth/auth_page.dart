// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messager_app/core/cubit/auth/auth_screens_index_cubit.dart';
import 'package:messager_app/ui/pages/auth/screens/account_created_screen.dart';
import 'package:messager_app/ui/pages/auth/screens/complete_profile_screen.dart';
import 'package:messager_app/ui/pages/auth/screens/verify_screen.dart';
import 'package:messager_app/ui/theme/colors.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: BlocBuilder<AuthScreensIndexCubit, int>(
          builder: (context, state) {
            return IndexedStack(
              index: state,
              children: const [
                VerifyScreen(),
                AccountCreatedScreen(),
                CompleteProfileScreen()
              ],
            );
          },
        ),
      ),
    );
  }
}
