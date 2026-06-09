import 'package:flutter/material.dart';

import 'screens/accounts_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(const MtApp());
}

class MtApp extends StatelessWidget {
  const MtApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MT App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      // Named routes keep this first navigation example easy to follow.
      initialRoute: DashboardScreen.routeName,
      routes: {
        DashboardScreen.routeName: (context) => const DashboardScreen(),
        AccountsScreen.routeName: (context) => const AccountsScreen(),
        SettingsScreen.routeName: (context) => const SettingsScreen(),
      },
    );
  }
}
