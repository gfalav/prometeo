import 'package:flutter/material.dart';
import 'package:prometeo/shared/ui/frame/useraction/useraction.dart';

class QubitAppBar {
  PreferredSizeWidget appBar(
    BuildContext context,
    int iconBar,
    String title,
    bool showActionsButtons,
  ) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
      title: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: Icon(IconData(iconBar, fontFamily: "MaterialIcons")),
          ),
          Text(title),
        ],
      ),
      actions: showActionsButtons
          ? [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                    // Handle settings button press
                  },
                ),
              ),
              UserAction(),
            ]
          : [],
    );
  }
}
