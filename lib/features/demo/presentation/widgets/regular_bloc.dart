import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hook_testinground/core/presentation/blocs/any_fetch_bloc/any_fetch_bloc.dart';
import 'package:flutter_hook_testinground/features/demo/presentation/blocs/test/test_bloc.dart';

class RebularBloc extends StatefulWidget {
  const RebularBloc({Key? key}) : super(key: key);

  @override
  _RebularBlocState createState() => _RebularBlocState();
}

class _RebularBlocState extends State<RebularBloc> {
  late final TestBloc testBloc;

  @override
  void initState() {
    testBloc = TestBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: testBloc,
      builder: (context, state) {
        return Container(
          color: Colors.redAccent,
          child: Center(
            child: TextButton(
              onPressed: () {
                testBloc.add(const DefaultAnyFetchEvent());
              },
              child: const Text('Activate'),
            ),
          ),
        );
      },
    );
  }
}
