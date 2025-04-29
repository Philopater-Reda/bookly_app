// ignore_for_file: deprecated_member_use

import 'package:dio/dio.dart';

abstract class Failure {
  final String errMassage;
 const Failure({this.errMassage = ''});
}
class ServerFailure extends Failure {
  const ServerFailure(String errMassage) : super(errMassage: errMassage);
  //ServerFailure(super.errMassage);
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return const ServerFailure('Connection Timeout');
      case DioErrorType.sendTimeout:
        return const ServerFailure('Send Timeout');
      case DioErrorType.receiveTimeout:
        return const ServerFailure('Receive Timeout');
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioErrorType.cancel:
        return const ServerFailure('Request Cancelled');
      case DioErrorType.unknown:
        return const ServerFailure('Unknown Error');
      case DioExceptionType.badCertificate:
        return const ServerFailure('Bad Certificate');
      case DioExceptionType.connectionError:
        return const ServerFailure('Connection Error');      
    }
  }
  factory ServerFailure.fromResponse(int statusCode , dynamic response) {
    switch (statusCode) {
      case 400:
        return const ServerFailure('Bad Request');
      case 401:
        return const ServerFailure('Unauthorized');
      case 403:
        return const ServerFailure('Forbidden');
      case 404:
        return const ServerFailure('Not Found');
      case 500:
        return const ServerFailure('Internal Server Error');
      default:
        return const ServerFailure('Unknown Error');
    }
  }
}