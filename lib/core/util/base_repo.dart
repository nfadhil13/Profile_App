import 'base_exception.dart';
import 'resource.dart';

import 'dart:developer' as developer;

abstract class BaseRepository {
  Future<Resource<T>> networkOnlyCall<T>(
      {required Future<Resource<T>> Function() networkCall,
      Resource<T>? Function(dynamic E)? specificErrorHandler}) async {
    try {
      return await networkCall();
    } catch (e, stacktrace) {
      developer.log(e.toString(), stackTrace: stacktrace);
      return _errorHandler(e, specificErrorHandler);
    }
  }

  Resource<T> _errorHandler<T>(
      dynamic e, Resource<T>? Function(dynamic E)? specificErrorHandler) {
    if (specificErrorHandler != null) {
      final spesficError = specificErrorHandler.call(e);
      if (spesficError != null) return spesficError;
    }
    if (e is BaseException) {
      return Resource.error(exception: e);
    }
    return Resource.error(
        exception: BaseException(message: "Oops, something went wrong.."));
  }
}
