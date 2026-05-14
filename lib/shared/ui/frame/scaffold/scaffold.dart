import 'package:flutter/material.dart';
import 'package:prometeo/shared/ui/frame/appbar/appbar.dart';

class QubitScaffold extends StatelessWidget {
  const QubitScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: QubitAppBar().appBar(context, Icons.home.codePoint, "Home", true),
      body: Container(
        color: Theme.of(context).colorScheme.surfaceContainer,
        child: const Center(child: Text("Hello World")),
      ),
    );
  }
}
