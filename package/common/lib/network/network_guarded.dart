import 'dart:async';

import 'package:common/common.dart';

Future<NetworkResponse<O>> runNetworkGuarded<I, O>({
  required Future<I> Function() run,
  required O Function(I value) transform,
}) async {
  BaseException exception;

  try {
    return ResponseSuccess(
      response: transform(
        await run(),
      ),
    );
  } on FormatException catch (_) {
    exception = const ParserException();
  } on DioError catch (_) {
    if (_.error is ConnectException) {
      exception = const ConnectException();
    } else {
      exception = const NetworkException();
    }
  } catch (_) {
    exception = const BaseException();
  }

  return ResponseFailure(
    exception: exception,
  );
}
