import 'package:flutter/material.dart';
import 'package:prometeo/shared/ui/frame/leftmenu/leftmenu.dart';

class QubitDrawer extends StatelessWidget {
  const QubitDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
      child: LeftMenu(),
    );
  }
}
