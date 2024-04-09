import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw4/themes/themeprovider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar (
        title: const Text("Settings"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey,
        elevation: 0,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Dark Mode  🌙"),
          
              CupertinoSwitch(
                value: Provider.of<Themeprovider>(context, listen: false).isdarkMode,
                onChanged: (value) => Provider.of<Themeprovider>(context, listen: false)
                .toggleTheme(),
              )
            ],
                 ),
        ),

    );
  }
}