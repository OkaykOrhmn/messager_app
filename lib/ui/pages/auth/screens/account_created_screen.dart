// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messager_app/core/cubit/auth/auth_screens_index_cubit.dart';
import 'package:messager_app/core/gen/assets.gen.dart';
import 'package:messager_app/core/routes/route_paths.dart';
import 'package:messager_app/main.dart';
import 'package:messager_app/ui/theme/colors.dart';
import 'package:messager_app/ui/theme/text_styles.dart';
import 'package:messager_app/ui/widgets/button/primary_rounded_button.dart';

class AccountCreatedScreen extends StatefulWidget {
  const AccountCreatedScreen({super.key});

  @override
  _AccountCreatedScreenState createState() => _AccountCreatedScreenState();
}

class _AccountCreatedScreenState extends State<AccountCreatedScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Account Created",
                style: Theme.of(context)
                    .textTheme
                    .headerBold
                    .copyWith(color: Theme.of(context).appPrimaryColor()),
              ),
              Center(child: Assets.image.loginThree.image()),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi There,",
                      style: Theme.of(context)
                          .textTheme
                          .headerBold
                          .copyWith(color: Theme.of(context).appPrimaryColor()),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Complete your profile to get a personalized feeds",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(color: Theme.of(context).appPrimaryColor()),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    PrimaryRoundedButton(
                      width: MediaQuery.sizeOf(context).width,
                      height: 46,
                      title: 'Compelete profile',
                      click: () {
                        context
                            .read<AuthScreensIndexCubit>()
                            .setSelectedIndex(2);
                      },
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  navigatorKey.currentState!
                      .pushReplacementNamed(RoutePaths.home);
                },
                style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).appPrimaryColor()),
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
            top: 30,
            left: -20,
            child: Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).appPrimaryColor(shade: 100)),
            )),
        Positioned(
            bottom: -18,
            right: -18,
            child: Container(
              width: 86,
              height: 86,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(280),
                      bottomLeft: Radius.circular(240),
                      topLeft: Radius.circular(360),
                      bottomRight: Radius.circular(0)),
                  color: Theme.of(context).appPrimaryColor(shade: 100)),
            )),
      ],
    );
  }
}
