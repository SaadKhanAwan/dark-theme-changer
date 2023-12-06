import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/theme_changer.dart';

class dark_theme extends StatefulWidget {
  const dark_theme({super.key});

  @override
  State<dark_theme> createState() => _dark_themeState();
}

class _dark_themeState extends State<dark_theme> {
  @override
  Widget build(BuildContext context) {
    final theme_changer = Provider.of<them_changer_provier>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("themes"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioListTile<ThemeMode>(
              title: Text("light mode"),
              value: ThemeMode.light,
              groupValue: theme_changer.thememode,
              onChanged: theme_changer.setTheme),
          RadioListTile<ThemeMode>(
              title: Text("dark mode"),
              value: ThemeMode.dark,
              groupValue: theme_changer.thememode,
              onChanged: theme_changer.setTheme),
          Icon(
            Icons.favorite,
            size: 50,
          ),
        ],
      ),
    );
  }
}
