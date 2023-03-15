import 'package:flutter/material.dart';
import 'package:social_mobile/config/state_page_config.dart';
import 'package:social_mobile/screens/home_screen.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      home: const StatePageConfig(),
    );
  }
}
