import 'package:building_managemnet/splash_screen.dart';
import 'package:flutter/material.dart';

import 'dashborad/dashboard_screen.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: const DashBoardScreen(),
    );
  }
}
