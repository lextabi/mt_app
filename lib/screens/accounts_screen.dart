import 'package:flutter/material.dart';

class AccountsScreen extends StatelessWidget {
  const AccountsScreen({super.key});

  static const routeName = '/accounts';

  static const accounts = [
    ('Savings', '\u20B150,000'),
    ('GCash', '\u20B15,000'),
    ('Cash Wallet', '\u20B11,000'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Accounts')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: accounts.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final account = accounts[index];

          return ListTile(
            title: Text(account.$1),
            trailing: Text(
              account.$2,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
