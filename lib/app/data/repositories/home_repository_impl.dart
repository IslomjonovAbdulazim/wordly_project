import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wordly_project/app/data/models/home/book_response_model.dart';
import 'package:wordly_project/app/data/models/home/unit_response_model.dart';
import 'package:wordly_project/app/data/providers/home_api_client.dart';
import 'package:wordly_project/domain/entities/home/book_entity.dart';
import 'package:wordly_project/domain/entities/home/unit_entity.dart';
import 'package:wordly_project/domain/repositories/home_repository.dart';
import 'package:wordly_project/utils/errors/network_failure.dart';

import '../../../utils/constants/api_constants.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeApiClient apiClient;

  HomeRepositoryImpl({Dio? dio})
      : apiClient = HomeApiClient(
          dio ??
              Dio(BaseOptions(
                baseUrl: ApiConstants.baseURL,
                connectTimeout: Duration(seconds: 30),
                receiveTimeout: Duration(seconds: 30),
              )),
        );

  @override
  Future<Either<NetworkFailure, List<BookEntity>>> books() async {
    try {
      final books = await apiClient.getBooks();
      return Right(books.map((book) => book.toEntity()).toList());
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.response?.statusMessage,
          statusCode: e.response?.statusCode,
        ),
      );
    }
  }

  @override
  Future<Either<NetworkFailure, List<UnitEntity>>> units(int bookID) async {
    try {
      final units = await apiClient.getUnits(bookID);
      return Right(units.map((unit) => unit.toEntity()).toList());
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.response?.statusMessage,
          statusCode: e.response?.statusCode,
        ),
      );
    }
  }
}
