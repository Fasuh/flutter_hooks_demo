import 'package:flutter_hook_testinground/core/error/failures.dart';

// ignore: avoid_annotating_with_dynamic
Failure handleError(final dynamic error, final Failure defaultFailure) {
  if(error is Failure) {
    return error;
  }
  return defaultFailure;
}
