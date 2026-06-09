# MT App

Personal finance and money tracking app built with Flutter.

This project is currently focused on learning Flutter screen structure and navigation.

## Current Milestone

- Dashboard screen
- Accounts screen with sample hardcoded accounts
- Settings screen with placeholder settings
- Simple named-route navigation

## Project Structure

- `pubspec.yaml` - Flutter project configuration, package name, SDK version, and dependencies.
- `analysis_options.yaml` - Dart lint rules for learning good Flutter habits early.
- `lib/main.dart` - Application entry point. Creates `MaterialApp`, app theme, and route table.
- `lib/screens/` - Folder for top-level app screens.
- `lib/screens/dashboard_screen.dart` - Home screen with buttons to Accounts and Settings.
- `lib/screens/accounts_screen.dart` - Shows sample local account balances.
- `lib/screens/settings_screen.dart` - Shows placeholder settings for currency and dark mode.

## How Navigation Works

`MaterialApp` in `lib/main.dart` defines a `routes` map. Each screen has a static `routeName`
so route names stay close to the screen they open.

The Dashboard buttons call:

```dart
Navigator.pushNamed(context, AccountsScreen.routeName);
Navigator.pushNamed(context, SettingsScreen.routeName);
```

This pushes a new screen onto Flutter's navigation stack. The back button returns to the previous
screen automatically.

## How To Run

If this folder already has Android platform files, run:

```powershell
flutter pub get
flutter run
```

If Android platform files are missing, run this once first:

```powershell
flutter create . --project-name mt_app
```

Then run:

```powershell
flutter run
```

## Planned Future Features

- Account management
- Income tracking
- Expense tracking
- Transfers
- Budgets
- Reports
- Offline storage

Future tools may include Isar, Riverpod, and Firebase sync, but they are intentionally not part of
this first navigation milestone.

## Next Learning Milestone

After the three-screen navigation is understood, the next step is to create a small `Account` model
class and pass account data into widgets instead of storing display text directly in the screen.
