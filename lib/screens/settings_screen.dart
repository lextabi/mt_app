import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            title: Text('Currency'),
            subtitle: Text('Philippine Peso placeholder'),
          ),
          Divider(),
          SwitchListTile(
            value: false,
            onChanged: null,
            title: Text('Dark Mode'),
            subtitle: Text('Coming later'),
          ),
        ],
      ),
    );
  }
}
