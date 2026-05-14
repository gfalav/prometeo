import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prometeo/shared/controllers/appcontroller.dart';
import 'package:prometeo/shared/ui/frame/appbar/appbar.dart';
import 'package:prometeo/shared/ui/frame/drawer/drawer.dart';

class QubitScaffold extends StatelessWidget {
  final String appBarTitle;
  final int appBarIcon;
  final bool showActions;
  final bool showDrawer;

  const QubitScaffold({
    super.key,
    required this.appBarTitle,
    required this.appBarIcon,
    required this.showActions,
    required this.showDrawer,
  });

  @override
  Widget build(BuildContext context) {
    AppController appController = Get.put(AppController());
    appController.updateScreenSize(
      MediaQuery.of(context).size.width,
      MediaQuery.of(context).size.height,
    );

    return Obx(
      () => Scaffold(
        appBar: QubitAppBar().appBar(
          context,
          appBarIcon,
          appBarTitle,
          showActions,
        ),
        drawer: appController.devType.value == "Mobile" && showDrawer
            ? const QubitDrawer()
            : null,
        body: Container(
          color: Theme.of(context).colorScheme.surfaceContainer,
          child: Center(child: Text(appController.screenWidth.toString())),
        ),
      ),
    );
  }
}
