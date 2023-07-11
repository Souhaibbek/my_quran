import 'package:dio/dio.dart';

abstract class Failure {
  final String msg;

  Failure(this.msg);
}

class ServerFailure extends Failure {
  ServerFailure(super.msg);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection Timeout with api server');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send Timeout with api server');

      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive Timeout with api server');

      case DioErrorType.badCertificate:
        return ServerFailure('Bad Certificate ');

      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);

      case DioErrorType.cancel:
        return ServerFailure('Request to api server was cancelled');

      case DioErrorType.connectionError:
        return ServerFailure('No internet Connection');

      case DioErrorType.unknown:
        return ServerFailure('Ops, there was an error , please try again!');
    }
  }
  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure('Your request was not found,Please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('There is a problem with server,Please try later!');
    } else if (statusCode == 401 || statusCode == 403 || statusCode == 400) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure('Ops, there was an error , please try again!');
    }
  }
}

class CacheFailure extends Failure {
  CacheFailure(super.msg);
}

class NetworkFailure extends Failure {
  NetworkFailure(super.msg);
}
