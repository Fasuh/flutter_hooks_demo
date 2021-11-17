import 'package:flutter/material.dart';
import 'package:flutter_hook_testinground/core/navigator/navigator.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StateHooksScreen extends HookWidget with NavigatedScreen {
  const StateHooksScreen({Key? key}) : super(key: key);

  @override
  String get routeName => 'state_hooks_screen';

  @override
  Widget build(BuildContext context) {
    final counter = useState(0);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.value++;
        },
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: ${counter.value}'),
          ],
        ),
      ),
    );
  }
}
