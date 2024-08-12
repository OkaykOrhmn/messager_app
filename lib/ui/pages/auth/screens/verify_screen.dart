// ignore_for_file: library_private_types_in_public_api


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messager_app/core/bloc/auth/auth_bloc.dart';
import 'package:messager_app/core/cubit/auth/auth_screens_index_cubit.dart';
import 'package:messager_app/core/gen/assets.gen.dart';
import 'package:messager_app/data/model/register_model.dart';
import 'package:messager_app/ui/theme/colors.dart';
import 'package:messager_app/ui/theme/text_styles.dart';
import 'package:messager_app/ui/widgets/button/primary_rounded_button.dart';
import 'package:messager_app/ui/widgets/textfield/primary_text_field_fill.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({super.key});

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  ValueNotifier<bool> isValid = ValueNotifier(false);
  ValueNotifier<bool> loading = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state is AuthSuccess) {
                loading.value = false;

                context.read<AuthScreensIndexCubit>().setSelectedIndex(1);
              } else if (state is AuthFail) {
                loading.value = false;
              }
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Login",
                  style: Theme.of(context)
                      .textTheme
                      .headerBold
                      .copyWith(color: Theme.of(context).appPrimaryColor()),
                ),
                Center(child: Assets.image.loginOne.image()),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32),
                  child: Column(
                    children: [
                      PrimaryTextFieldFill(
                        hintText: 'Username',
                        controller: username,
                        onChanged: (p0) {
                          if (p0.isNotEmpty && password.text.isNotEmpty) {
                            isValid.value = true;
                          } else {
                            isValid.value = false;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      PrimaryTextFieldFill(
                        hintText: 'Password',
                        controller: password,
                        onChanged: (p0) {
                          if (p0.isNotEmpty && username.text.isNotEmpty) {
                            isValid.value = true;
                          } else {
                            isValid.value = false;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      ValueListenableBuilder<bool>(
                        valueListenable: isValid,
                        builder: (context, isValidValue, child) =>
                            ValueListenableBuilder<bool>(
                          valueListenable: loading,
                          builder: (context, loadingValue, child) =>
                              PrimaryRoundedButton(
                            isLoading: loadingValue,
                            title: 'Login',
                            width: MediaQuery.sizeOf(context).width,
                            height: 46,
                            click: isValidValue
                                ? () {
                                    User user = User(
                                        username: username.text,
                                        password: password.text);
                                    context
                                        .read<AuthBloc>()
                                        .add(RegisterUser(user: user));
                                    loading.value = true;
                                  }
                                : null,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: -18,
            right: 46,
            child: Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).appPrimaryColor(shade: 100)),
            )),
        Positioned(
            bottom: -18,
            left: -18,
            child: Container(
              width: 86,
              height: 86,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(360),
                      bottomLeft: Radius.circular(0),
                      topLeft: Radius.circular(280),
                      bottomRight: Radius.circular(240)),
                  color: Theme.of(context).appPrimaryColor(shade: 100)),
            )),
      ],
    );
  }
}
