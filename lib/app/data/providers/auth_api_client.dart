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

  // Sign in with email
  @POST(ApiConstants.token)
  Future<AuthModel> signInWithEmail(@Body() Map<String, dynamic> body);

  // Sign up with email
  @POST(ApiConstants.register)
  Future<AuthModel> signUpWithEmail(@Body() Map<String, dynamic> body);

  // Forgot password: send OTP
  @POST(ApiConstants.verifyOTP)
  Future<ForgotPasswordRequestModel> forgotPassword(
      @Body() Map<String, dynamic> body);

  // Confirm OTP
  @POST(ApiConstants.registerCheck)
  Future<HttpResponse<dynamic>> confirmOtp(@Body() Map<String, dynamic> body);

  // Change password
  @POST(ApiConstants.resetPassword)
  Future<ChangePasswordRequestModel> changePassword(
      @Body() Map<String, dynamic> body);

  // Social auth (for sign in or sign up)
  @POST("/auth/socialAuth")
  Future<AuthModel> socialAuth(@Body() Map<String, dynamic> body);
}
