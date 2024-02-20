import 'package:api_riverpoad/utils/extensions.dart';
import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({super.key, this.child, this.height});
  final Widget? child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final devicesize = context.deviceSize;
    final colors = context.colorScheme;

    return Container(
        width: devicesize.width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colors.primaryContainer,
        ),
        child: child);
  }
}
