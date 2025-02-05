import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wordly_project/app/data/models/auth/auth_response_model.dart';
import 'package:wordly_project/app/data/models/auth/sign_in_request_model.dart';
import 'package:wordly_project/app/data/models/auth/sign_in_response_model.dart';

import '../../../utils/constants/api_constants.dart';
import '../models/auth/auth_model.dart';
import '../models/auth/change_password_request_model.dart';
import '../models/auth/forgot_password_request_model.dart';

part 'auth_api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseURL)
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio, {String baseUrl}) = _AuthApiClient;

  @POST(ApiConstants.token)
  Future<SignInResponseModel> signInWithEmail(@Body() Map<String, dynamic> body);

  @POST(ApiConstants.register)
  Future<AuthResponseModel> signUpWithEmail(@Body() Map<String, dynamic> body);

  @POST(ApiConstants.verifyOTP)
  Future<AuthResponseModel> forgotPassword(
      @Body() Map<String, dynamic> body);

  @POST(ApiConstants.registerCheck)
  Future<AuthResponseModel> confirmOtp(@Body() Map<String, dynamic> body);

  @POST(ApiConstants.resetPassword)
  Future<AuthResponseModel> changePassword(
      @Body() Map<String, dynamic> body);

  @POST("/auth/socialAuth")
  Future<AuthResponseModel> socialAuth(@Body() Map<String, dynamic> body);
}
