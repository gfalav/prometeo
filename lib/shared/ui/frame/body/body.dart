import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prometeo/shared/controllers/appcontroller.dart';
import 'package:prometeo/shared/ui/frame/leftmenu/leftmenu.dart';

class QubitBody extends StatelessWidget {
  const QubitBody({super.key});

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
              Expanded(child: Container(color: Colors.green)),
              Container(color: Colors.blue, width: 100),
            ],
          ),
        ),
        Container(color: Colors.yellow, height: 48),
      ],
    );
  }
}
