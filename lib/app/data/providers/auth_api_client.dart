import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/auth/auth_model.dart';
import '../models/auth/change_password_request_model.dart';
import '../models/auth/confirm_otp_request_model.dart';
import '../models/auth/forgot_password_request_model.dart';

part 'auth_api_client.g.dart';

@RestApi(baseUrl: "http://10.10.4.65:8001")
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio, {String baseUrl}) = _AuthApiClient;

  // Sign in with email
  @POST("/auth/signin")
  Future<AuthModel> signInWithEmail(@Body() Map<String, dynamic> body);

  // Sign up with email
  @POST("/api/v1/auth/register/")
  Future<AuthModel> signUpWithEmail(@Body() Map<String, dynamic> body);

  // Forgot password: send OTP
  @POST("/auth/forgotPassword")
  Future<ForgotPasswordRequestModel> forgotPassword(
      @Body() Map<String, dynamic> body);

  // Confirm OTP
  @POST("/api/v1/auth/register/check")
  Future<HttpResponse<dynamic>> confirmOtp(
      @Body() Map<String, dynamic> body
      );

  // Change password
  @POST("/auth/changePassword")
  Future<ChangePasswordRequestModel> changePassword(
      @Body() Map<String, dynamic> body);

  // Social auth (for sign in or sign up)
  @POST("/auth/socialAuth")
  Future<AuthModel> socialAuth(@Body() Map<String, dynamic> body);
}
