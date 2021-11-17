import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hook_testinground/core/navigator/navigator.dart';
import 'package:flutter_hook_testinground/core/presentation/blocs/any_fetch_bloc/any_fetch_bloc.dart';
import 'package:flutter_hook_testinground/features/demo/presentation/blocs/test/test_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomHooksScreen extends HookWidget with NavigatedScreen {
  const CustomHooksScreen({Key? key}) : super(key: key);

  @override
  String get routeName => 'custom_hooks_screen';

  @override
  Widget build(BuildContext context) {
    final bloc = useCubit(() => TestBloc(), ['key']);

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                bloc.add(const DefaultAnyFetchEvent());
              },
              child: const Text('Activate'),
            ),
            Text(useCubitState(bloc).toString()),
          ],
        ),
      ),
    );
  }
}

T useCubit<T extends BlocBase<dynamic>>(T Function() valueBuilder,
    [List<Object> keys = const []]) {
  final value = useMemoized(valueBuilder, keys);

  useEffect(() => value.close, [value]);

  return value;
}

T? useCubitState<T>(BlocBase<T> cubit) =>
    useStream(cubit.stream, initialData: cubit.state).data;
