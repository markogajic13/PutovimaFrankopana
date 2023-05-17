import 'package:flutter/material.dart';
import 'dimensions_const_about.dart';

class ResponsiveLayoutAbout extends StatelessWidget {
  final Widget mobileBodyAbout;
  final Widget desktopBodyAbout;

  const ResponsiveLayoutAbout({
    Key? key,
    required this.mobileBodyAbout,
    required this.desktopBodyAbout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBodyAbout;
        } else {
          return desktopBodyAbout;
        }
      },
    );
  }
}
