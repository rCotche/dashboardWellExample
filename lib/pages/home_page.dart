import 'package:dashboard_well_example/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

import '../responsive/desktop_scaffold.dart';
import '../responsive/mobile_scaffold.dart';
import '../responsive/tablet_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileScaffold: MobileScaffold(),
      tabletScaffold: TabletScaffold(),
      desktopScaffold: DesktopScaffold(),
    );
  }
}
