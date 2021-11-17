import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hook_testinground/core/presentation/blocs/any_fetch_bloc/any_fetch_bloc.dart';
import 'package:flutter_hook_testinground/features/demo/presentation/blocs/test/test_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HookBloc extends HookWidget {
  const HookBloc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = useMemoized(() => TestBloc(), ['a']);

    return BlocBuilder(
      bloc: bloc,
      builder: (context, state) {
        return Container(
          color: Colors.lightGreen,
          child: Center(
            child: TextButton(
              onPressed: () {
                bloc.add(const DefaultAnyFetchEvent());
              },
              child: const Text('Activate'),
            ),
          ),
        );
      },
    );
  }
}
