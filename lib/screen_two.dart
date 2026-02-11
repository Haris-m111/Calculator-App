class AppExceptions implements Exception {
  // Parameters
  final _message;
  final _prefix;
  // Constructor
  AppExceptions([this._message, this._prefix]);
  // String Method
  String toString() {
    return '$_prefix$_message';
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message]) : super(message, 'No internet');
}

class RequestTimeOut extends AppExceptions {
  RequestTimeOut([String? message]) : super(message, 'Request Time Out');
}

class ServerException extends AppExceptions {
  ServerException([String? message]) : super(message, 'Internal Server Error');
}
