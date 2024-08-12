import 'package:flutter/material.dart';
import 'package:messager_app/ui/theme/colors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PrimaryRoundedButton extends StatelessWidget {
  final String title;
  final Function()? click;
  final double? width;
  final double? height;
  final bool isLoading;
  const PrimaryRoundedButton(
      {super.key,
      required this.title,
      this.click,
      this.width,
      this.height,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).appPrimaryColor(),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(360))),
          onPressed: click,
          child: isLoading
              ? const Center(
                  child: SpinKitThreeBounce(
                    size: 24,
                    color: Colors.white,
                  ),
                )
              : Text(title)),
    );
  }
}
