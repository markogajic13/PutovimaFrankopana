import 'package:flutter/material.dart';
import 'dimensions_const_piktogrami.dart';

class ResponsiveLayoutPiktogrami extends StatelessWidget {
  final Widget mobileBodyPiktogrami;
  final Widget desktopBodyPiktogrami;

  const ResponsiveLayoutPiktogrami({
    Key? key,
    required this.mobileBodyPiktogrami,
    required this.desktopBodyPiktogrami,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBodyPiktogrami;
        } else {
          return desktopBodyPiktogrami;
        }
      },
    );
  }
}
