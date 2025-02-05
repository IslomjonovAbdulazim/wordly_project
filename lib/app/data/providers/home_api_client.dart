import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:wordly_project/utils/helpers/logger.dart';

import '../../../utils/constants/api_constants.dart';
import '../models/home/book_response_model.dart';
import '../models/home/unit_response_model.dart';

part 'home_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class HomeApiClient {
  factory HomeApiClient(Dio dio, {String baseUrl}) = _HomeApiClient;

  @GET(ApiConstants.books)
  Future<List<BookResponseModel>> getBooks(
    @Header("Authorization") String token,
  );

  @GET(ApiConstants.units)
  Future<List<UnitResponseModel>> getUnits(
    @Header("Authorization") String token,
    @Path("book_id") int bookID,
  );
}
