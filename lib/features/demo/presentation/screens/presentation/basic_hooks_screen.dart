import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hook_testinground/core/navigator/navigator.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BasicHooksScreen extends HookWidget with NavigatedScreen {
  const BasicHooksScreen();

  @override
  String get routeName => 'basic_hooks_screen';

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    final focusNode = useFocusNode();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              focusNode: focusNode,
              controller: textEditingController,
            ),
          ],
        ),
      ),
    );
  }
}
