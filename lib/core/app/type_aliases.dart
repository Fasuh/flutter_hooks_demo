import 'package:dartz/dartz.dart';
import 'package:flutter_hook_testinground/core/error/failures.dart';

typedef Json = Map<String, dynamic>;
typedef FutureFailable<T> = Future<Either<Failure, T>>;