import 'package:flutter/material.dart';
import 'dimensions_const_home_page.dart';

class ResponsiveLayoutHomePage extends StatelessWidget {
  final Widget mobileBodyHomePage;
  final Widget desktopBodyHomePage;

  const ResponsiveLayoutHomePage({
    Key? key,
    required this.mobileBodyHomePage,
    required this.desktopBodyHomePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBodyHomePage;
        } else {
          return desktopBodyHomePage;
        }
      },
    );
  }
}
