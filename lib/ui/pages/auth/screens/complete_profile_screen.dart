// ignore_for_file: use_super_parameters, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:messager_app/core/gen/assets.gen.dart';
import 'package:messager_app/core/routes/route_paths.dart';
import 'package:messager_app/main.dart';
import 'package:messager_app/ui/theme/colors.dart';
import 'package:messager_app/ui/theme/text_styles.dart';
import 'package:messager_app/ui/widgets/button/primary_dropdown_button.dart';
import 'package:messager_app/ui/widgets/button/primary_rounded_button.dart';
import 'package:messager_app/ui/widgets/textfield/primary_text_field_fill.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  _CompleteProfileScreenState createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Complete Profile",
                style: Theme.of(context)
                    .textTheme
                    .headerBold
                    .copyWith(color: Theme.of(context).appPrimaryColor()),
              ),
              const SizedBox(
                height: 24,
              ),
              profileImage(),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryTextFieldFill(
                        hintText: 'Name', controller: TextEditingController()),
                    const SizedBox(
                      height: 24,
                    ),
                    PrimaryTextFieldFill(
                        hintText: 'Last name (optional)',
                        controller: TextEditingController()),
                    const SizedBox(
                      height: 24,
                    ),
                    const PrimaryDropdownButton(
                      title: 'Gender',
                      items: ['None', 'Male', 'Female'],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    PrimaryTextFieldFill(
                        hintText: 'Email (optional)',
                        controller: TextEditingController()),
                    const SizedBox(
                      height: 24,
                    ),
                    PrimaryRoundedButton(
                      width: MediaQuery.sizeOf(context).width,
                      height: 46,
                      title: 'Compelete profile',
                      click: () {
                        navigatorKey.currentState!
                            .pushReplacementNamed(RoutePaths.home);
                      },
                    ),
                    const SizedBox(
                      height: 24,
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
              ),
            ],
          ),
        ),
        Positioned(
            bottom: 30,
            left: -20,
            child: Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).appPrimaryColor(shade: 100)),
            )),
        Positioned(
            top: -18,
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

  ClipOval profileImage() {
    return ClipOval(
        child: Stack(
      children: [
        Assets.image.profile.image(width: 120, height: 120),
        Positioned.fill(
            child: Container(
          color: Colors.white.withOpacity(0.8),
          margin: const EdgeInsets.all(8),
          child: const Center(
            child: Text(
              'Tap to Select your profile image',
              textAlign: TextAlign.center,
            ),
          ),
        ))
      ],
    ));
  }
}
