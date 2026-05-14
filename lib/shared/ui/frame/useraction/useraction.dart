import 'package:flutter/material.dart';

class UserAction extends StatelessWidget {
  const UserAction({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Padding(
        padding: EdgeInsets.only(right: 10),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Theme.of(context).colorScheme.onPrimary,
          child: Icon(
            size: 30,
            Icons.person,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      itemBuilder: (itemBuilder) {
        return [
          const PopupMenuItem(value: "profile", child: Text("Profile")),
          const PopupMenuItem(value: "settings", child: Text("Settings")),
          const PopupMenuItem(value: "logout", child: Text("Logout")),
        ];
      },
    );
  }
}
