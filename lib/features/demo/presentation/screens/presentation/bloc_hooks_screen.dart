import 'package:flutter/material.dart';
import 'package:flutter_hook_testinground/core/navigator/navigator.dart';
import 'package:flutter_hook_testinground/features/demo/presentation/widgets/hook_bloc.dart';
import 'package:flutter_hook_testinground/features/demo/presentation/widgets/regular_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BlocHooksScreen extends HookWidget with NavigatedScreen {
  const BlocHooksScreen({Key? key}) : super(key: key);

  @override
  String get routeName => 'bloc_hooks_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Expanded(child: HookBloc()),
          Expanded(child: RebularBloc()),
        ],
      ),
    );
  }
}
