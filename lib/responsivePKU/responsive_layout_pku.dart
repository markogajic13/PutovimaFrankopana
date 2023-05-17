import 'package:flutter/material.dart';
import 'dimensions_const_pku.dart';

class ResponsiveLayoutPKU extends StatelessWidget {
  final Widget mobileBodyPKU;
  final Widget desktopBodyPKU;

  const ResponsiveLayoutPKU({
    Key? key,
    required this.mobileBodyPKU,
    required this.desktopBodyPKU,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBodyPKU;
        } else {
          return desktopBodyPKU;
        }
      },
    );
  }
}
