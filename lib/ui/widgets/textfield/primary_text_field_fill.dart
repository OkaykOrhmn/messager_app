import 'package:flutter/material.dart';
import 'package:messager_app/ui/theme/colors.dart';
import 'package:messager_app/ui/theme/text_styles.dart';

class PrimaryTextFieldFill extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final Function(String)? onChanged;

  const PrimaryTextFieldFill(
      {super.key,
      required this.hintText,
      required this.controller,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .title
            .copyWith(color: Theme.of(context).appPrimaryColor()),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
        filled: true,
        fillColor: Theme.of(context).appPrimaryColor(shade: 50),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(360),
        ),
      ),
    );
  }
}
