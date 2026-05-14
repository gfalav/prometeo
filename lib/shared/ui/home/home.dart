import 'package:flutter/material.dart';
import 'package:prometeo/shared/ui/frame/scaffold/scaffold.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return QubitScaffold(
      appBarTitle: "Home",
      appBarIcon: Icons.home.codePoint,
      showActions: true,
      showDrawer: true,
      body: SizedBox(child: const Center(child: Text("Home"))),
    );
  }
}
