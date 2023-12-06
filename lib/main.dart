import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider_app_2/provider/Login_provider.dart';
// import 'package:provider_app_2/provider/favorite_provider.dart';
import 'package:provider_app_2/provider/theme_changer.dart';
import 'package:provider_app_2/screens/dark_theme.dart';
// import 'package:provider_app_2/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          // ChangeNotifierProvider(create: (_) => Favorite_provider()),
          ChangeNotifierProvider(create: (_) => them_changer_provier()),
          // ChangeNotifierProvider(create: (_) => AuthProvider()),
        ],
        child: Builder(builder: (BuildContext context) {
          final theme_changer = Provider.of<them_changer_provier>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: theme_changer.thememode,
            theme: ThemeData(
              iconTheme: const IconThemeData(color: Colors.green),
              brightness: Brightness.light,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.purple,
                appBarTheme: const AppBarTheme(backgroundColor: Colors.teal),
                iconTheme: const IconThemeData(color: Colors.orange)),
            home: const dark_theme(),
          );
        }));
  }
}
