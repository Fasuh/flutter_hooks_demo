import 'package:dartz/dartz.dart';
import 'package:flutter_hook_testinground/core/error/failures.dart';
import 'package:flutter_hook_testinground/core/presentation/blocs/any_fetch_bloc/any_fetch_bloc.dart';

class TestBloc extends AnyFetchBloc<bool> {
  @override
  Future<Either<Failure, bool>> fetchData(DefaultAnyFetchEvent event) async {
    await Future.delayed(const Duration(seconds: 2));
    return const Right(true);
  }
}
