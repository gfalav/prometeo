import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prometeo/shared/controllers/appcontroller.dart';
import 'package:prometeo/shared/ui/frame/leftmenu/leftmenu.dart';

class QubitBody extends StatelessWidget {
  final Widget body;
  const QubitBody({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());

    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Visibility(
                visible: appController.devType.value != "Mobile",
                child: Container(
                  color: Theme.of(context).colorScheme.surfaceContainer,
                  width: 305,
                  child: LeftMenu(),
                ),
              ),
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.surface,
                  child: body,
                ),
              ),
              Visibility(
                visible: appController.devType.value == "Desktop",
                child: Container(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  width: 200,
                ),
              ),
            ],
          ),
        ),
        Container(color: Theme.of(context).colorScheme.tertiary, height: 48),
      ],
    );
  }
}
