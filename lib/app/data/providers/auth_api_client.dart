import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wordly_project/app/data/models/home/book_response_model.dart';
import 'package:wordly_project/app/data/models/home/unit_response_model.dart';

import '../../../utils/constants/api_constants.dart';
import '../models/auth/auth_model.dart';
import '../models/auth/change_password_request_model.dart';
import '../models/auth/forgot_password_request_model.dart';

part 'auth_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio, {String baseUrl}) = _AuthApiClient;

  /// HOME
  @GET(ApiConstants.books)
  Future<List<BookResponseModel>> books();

  @GET(ApiConstants.units)
  Future<List<UnitResponseModel>> getUnits(@Path("book_id") int bookId);

  /// AUTH

  @POST(ApiConstants.token)
  Future<AuthModel> signInWithEmail(@Body() Map<String, dynamic> body);

  @POST(ApiConstants.register)
  Future<AuthModel> signUpWithEmail(@Body() Map<String, dynamic> body);

  @POST(ApiConstants.verifyOTP)
  Future<ForgotPasswordRequestModel> forgotPassword(
      @Body() Map<String, dynamic> body);

  @POST(ApiConstants.registerCheck)
  Future<HttpResponse<dynamic>> confirmOtp(@Body() Map<String, dynamic> body);

  @POST(ApiConstants.resetPassword)
  Future<ChangePasswordRequestModel> changePassword(
      @Body() Map<String, dynamic> body);

  @POST("/auth/socialAuth")
  Future<AuthModel> socialAuth(@Body() Map<String, dynamic> body);
}
