import 'package:flutter/material.dart';
import 'package:login_web/res/desktop.dart';
import 'package:login_web/res/mobile.dart';
import 'package:login_web/res/tablet.dart';
import 'package:login_web/responsive.dart';

void main() {
  runApp(const Root());
}

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileLayout(),
        tabletScaffold: TabletLayout(),
        webOrWindowsScaffold: DesktopLayout(),
      ),
    );
  }
}
