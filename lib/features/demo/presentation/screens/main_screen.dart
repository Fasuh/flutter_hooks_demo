import 'package:flutter/material.dart';
import 'package:flutter_hook_testinground/core/navigator/navigator.dart';
import 'package:flutter_hook_testinground/features/demo/presentation/screens/presentation/animations_hooks_screen.dart';
import 'package:flutter_hook_testinground/features/demo/presentation/screens/presentation/basic_hooks_screen.dart';
import 'package:flutter_hook_testinground/features/demo/presentation/screens/presentation/bloc_hooks_screen.dart';
import 'package:flutter_hook_testinground/features/demo/presentation/screens/presentation/custom_hooks_screen.dart';
import 'package:flutter_hook_testinground/features/demo/presentation/screens/presentation/state_hooks_screen.dart';

class MainScreen extends StatefulWidget with NavigatedScreen {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();

  @override
  String get routeName => 'main_screen';
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                const BasicHooksScreen().addScreen(context);
              },
              child: const Text('Basic'),
            ),
            TextButton(
              onPressed: () {
                const AnimationsHooksScreen().addScreen(context);
              },
              child: const Text('Animations'),
            ),
            TextButton(
              onPressed: () {
                const StateHooksScreen().addScreen(context);
              },
              child: const Text('State'),
            ),
            TextButton(
              onPressed: () {
                const BlocHooksScreen().addScreen(context);
              },
              child: const Text('BloC'),
            ),
            TextButton(
              onPressed: () {
                const CustomHooksScreen().addScreen(context);
              },
              child: const Text('Custom Hook'),
            ),
          ],
        ),
      ),
    );
  }
}
