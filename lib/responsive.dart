import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout(
      {super.key,
      required this.mobileScaffold,
      required this.tabletScaffold,
      required this.webOrWindowsScaffold});

  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget webOrWindowsScaffold;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobileScaffold;
      } else if (constraints.maxWidth < 1300) {
        return tabletScaffold;
      } else {
        return webOrWindowsScaffold;
      }
    });
  }
}
