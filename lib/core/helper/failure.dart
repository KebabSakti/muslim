class BadRequest implements Exception {
  BadRequest({String message = 'Bad request'});
}

class NotFound implements Exception {
  NotFound({String message = 'Not found'});
}

class Unauthorized implements Exception {
  Unauthorized({String message = 'Unauthorized'});
}

class InternalFailure implements Exception {
  InternalFailure({String message = 'Internal failure'});
}
