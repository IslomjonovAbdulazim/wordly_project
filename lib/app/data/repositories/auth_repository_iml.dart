// lib/app/data/repositories/auth_repository_impl.dart

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wordly_project/app/data/models/auth/auth_response_model.dart';
import 'package:wordly_project/app/data/models/auth/sign_in_response_model.dart';

import '../../../domain/repositories/auth_respository.dart';
import '../../../utils/constants/api_constants.dart';
import '../../../utils/errors/network_failure.dart';
import '../../../utils/helpers/logger.dart';
import '../models/auth/change_password_request_model.dart';
import '../models/auth/confirm_otp_request_model.dart';
import '../models/auth/forgot_password_request_model.dart';
import '../models/auth/sign_in_request_model.dart';
import '../models/auth/sign_up_request_model.dart';
import '../models/auth/social_auth_request_model.dart';
import '../providers/auth_api_client.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiClient apiClient;

  AuthRepositoryImpl({Dio? dio})
      : apiClient = AuthApiClient(
          dio ??
              Dio(BaseOptions(
                baseUrl: ApiConstants.baseURL,
                connectTimeout: Duration(seconds: 30),
                receiveTimeout: Duration(seconds: 30),
              )),
        );

  @override
  Future<Either<NetworkFailure, SignInResponseModel>> signInWithEmail(
      SignInRequestModel request) async {
    try {
      final authModel = await apiClient.signInWithEmail(request.toJson());
      return Right(authModel);
    } on DioException catch (e) {
      return Left(NetworkFailure(
        message: e.message,
        statusCode: e.response?.statusCode,
      ));
    }
  }

  @override
  Future<Either<NetworkFailure, AuthResponseModel>> signUpWithEmail(
      SignUpRequestModel request) async {
    try {
      final res = await apiClient.signUpWithEmail(request.toJson());
      return Right(res);
    } on DioException catch (e) {
      return Left(NetworkFailure(
        message: e.message,
        statusCode: e.response?.statusCode,
      ));
    }
  }

  @override
  Future<Either<NetworkFailure, AuthResponseModel>> forgotPassword(
      ForgotPasswordRequestModel request) async {
    try {
      final response = await apiClient.forgotPassword(request.toJson());
      return Right(response);
    } on DioException catch (e) {
      return Left(NetworkFailure(
        message: e.message,
        statusCode: e.response?.statusCode,
      ));
    }
  }

  @override
  Future<Either<NetworkFailure, AuthResponseModel>> confirmOtp(
      ConfirmOtpRequestModel request) async {
    Logger.log("-------------------------");
    Logger.log(request.toJson()["email"]);
    try {
      final response = (await apiClient.confirmOtp(request.toJson()));
      return Right(response);
    } on DioException catch (e) {
      return Left(NetworkFailure(
        message: e.message,
        statusCode: e.response?.statusCode,
      ));
    }
  }

  @override
  Future<Either<NetworkFailure, AuthResponseModel>> changePassword(
      ChangePasswordRequestModel request) async {
    try {
      final response = await apiClient.changePassword(request.toJson());
      return Right(response);
    } on DioException catch (e) {
      return Left(NetworkFailure(
        message: e.message,
        statusCode: e.response?.statusCode,
      ));
    }
  }

  @override
  Future<Either<NetworkFailure, AuthResponseModel>> socialAuth(
      SocialAuthRequestModel request) async {
    try {
      final authModel = await apiClient.socialAuth(request.toJson());
      return Right(authModel);
    } on DioException catch (e) {
      return Left(NetworkFailure(
        message: e.message,
        statusCode: e.response?.statusCode,
      ));
    }
  }
}
