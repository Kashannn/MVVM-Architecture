

class AppException implements Exception {

  final String message;
  final String prefix;
  AppException(this.message , this.prefix);

  @override
  String toString() {
    return "$prefix$message";
  }
}


class FetchDataException extends AppException {
  FetchDataException([String message = ""]) : super(message, "Error During Communication: ");
}

class BadRequestException extends AppException {
  BadRequestException([String message = ""]) : super(message, "Invalid Request: ");
}

class UnauthorisedException extends AppException {
  UnauthorisedException([String message = ""]) : super(message, "Unauthorised: ");
}

class InvalidInputException extends AppException {
  InvalidInputException([String message = ""]) : super(message, "Invalid Input: ");
}

class NoInternetException extends AppException {
  NoInternetException([String message = ""]) : super(message, "No Internet: ");
}
class NoServiceFoundException extends AppException {
  NoServiceFoundException([String message = ""]) : super(message, "No Service Found: ");
}