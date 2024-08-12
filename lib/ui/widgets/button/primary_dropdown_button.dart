import 'package:flutter/material.dart';
import 'package:messager_app/ui/theme/colors.dart';
import 'package:messager_app/ui/theme/design_config.dart';
import 'package:messager_app/ui/theme/text_styles.dart';

class PrimaryDropdownButton extends StatefulWidget {
  final String title;
  final Color? backgroundColor;
  final List<String> items;
  final Function(String)? click;
  final double? width;
  final double? height;

  const PrimaryDropdownButton(
      {super.key,
      required this.title,
      this.backgroundColor,
      required this.items,
      this.click,
      this.width,
      this.height = 48});

  @override
  State<PrimaryDropdownButton> createState() => _PrimaryDropdownButtonState();
}

class _PrimaryDropdownButtonState extends State<PrimaryDropdownButton> {
  final OverlayPortalController _tooltipController = OverlayPortalController();

  final _link = LayerLink();
  double? _buttonWidth;

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _link,
      child: OverlayPortal(
          controller: _tooltipController,
          overlayChildBuilder: (BuildContext context) {
            return CompositedTransformFollower(
              link: _link,
              targetAnchor: Alignment.bottomLeft,
              child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Container(
                    width: _buttonWidth,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 1.5,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        shadows: DesignConfig.defaultShadow(context)),
                    child: ListView.builder(
                      itemCount: widget.items.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          widget.click != null
                              ? widget.click!(widget.items[index])
                              : {};
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          child: Text(widget.items[index]),
                        ),
                      ),
                    ),
                  )),
            );
          },
          child: SizedBox(
            height: widget.height,
            width: widget.width,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).appPrimaryColor(shade: 50),
                borderRadius: BorderRadius.circular(360),
              ),
              child: InkWell(
                onTap: onTap,
                borderRadius: BorderRadius.circular(10),
                child: Center(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 32,
                      ),
                      Text(
                        widget.title,
                        style: Theme.of(context).textTheme.title.copyWith(
                            color: Theme.of(context).appPrimaryColor()),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }

  void onTap() {
    _buttonWidth = context.size?.width;
    _tooltipController.toggle();
  }
}
