import 'package:dartz/dartz.dart';
import 'package:wordly_project/app/data/models/home/book_response_model.dart';
import 'package:wordly_project/app/data/models/home/unit_response_model.dart';
import 'package:wordly_project/utils/errors/network_failure.dart';

abstract class HomeRepository {
  Future<Either<NetworkFailure, List<BookResponseModel>>> books();

  Future<Either<NetworkFailure, List<UnitResponseModel>>> units(int bookID);
}
