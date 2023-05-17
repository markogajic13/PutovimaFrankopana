import 'package:flutter/material.dart';
import 'dimensions_const_intpc.dart';

class ResponsiveLayoutIntpc extends StatelessWidget {
  final Widget mobileBodyIntpc;
  final Widget desktopBodyIntpc;

  const ResponsiveLayoutIntpc({
    Key? key,
    required this.mobileBodyIntpc,
    required this.desktopBodyIntpc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBodyIntpc;
        } else {
          return desktopBodyIntpc;
        }
      },
    );
  }
}
