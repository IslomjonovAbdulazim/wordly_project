import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../utils/constants/api_constants.dart';
import '../models/auth/auth_model.dart';
import '../models/auth/change_password_request_model.dart';
import '../models/auth/forgot_password_request_model.dart';

part 'auth_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio, {String baseUrl}) = _AuthApiClient;

  @POST(ApiConstants.token)
  Future<AuthModel> signInWithEmail(@Body() Map<String, dynamic> body);

  @POST(ApiConstants.register)
  Future<void> signUpWithEmail(@Body() Map<String, dynamic> body);

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
