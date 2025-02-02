// lib/app/data/repositories/auth_repository_impl.dart

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../domain/entities/auth_user.dart';
import '../../../domain/repositories/auth_respository.dart';
import '../../../utils/errors/network_failure.dart';
import '../models/auth/auth_model.dart';
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
                baseUrl: "https://api.example.com",
                connectTimeout: Duration(seconds: 30),
                receiveTimeout: Duration(seconds: 30),
              )),
        );

  @override
  Future<Either<NetworkFailure, AuthUser>> signInWithEmail(
      SignInRequestModel request) async {
    try {
      final AuthModel authModel =
          await apiClient.signInWithEmail(request.toJson());
      return Right(authModel.toEntity());
    } on DioException catch (e) {
      return Left(NetworkFailure(
        message: e.message,
        code: e.response?.statusCode,
      ));
    }
  }

  @override
  Future<Either<NetworkFailure, AuthUser>> signUpWithEmail(
      SignUpRequestModel request) async {
    try {
      final AuthModel authModel =
          await apiClient.signUpWithEmail(request.toJson());
      return Right(authModel.toEntity());
    } on DioException catch (e) {
      return Left(NetworkFailure(
        message: e.message,
        code: e.response?.statusCode,
      ));
    }
  }

  @override
  Future<Either<NetworkFailure, dynamic>> forgotPassword(
      ForgotPasswordRequestModel request) async {
    try {
      final response = await apiClient.forgotPassword(request.toJson());
      return Right(response);
    } on DioException catch (e) {
      return Left(NetworkFailure(
        message: e.message,
        code: e.response?.statusCode,
      ));
    }
  }

  @override
  Future<Either<NetworkFailure, dynamic>> confirmOtp(
      ConfirmOtpRequestModel request) async {
    try {
      final response = await apiClient.confirmOtp(request.toJson());
      return Right(response);
    } on DioException catch (e) {
      return Left(NetworkFailure(
        message: e.message,
        code: e.response?.statusCode,
      ));
    }
  }

  @override
  Future<Either<NetworkFailure, dynamic>> changePassword(
      ChangePasswordRequestModel request) async {
    try {
      final response = await apiClient.changePassword(request.toJson());
      return Right(response);
    } on DioException catch (e) {
      return Left(NetworkFailure(
        message: e.message,
        code: e.response?.statusCode,
      ));
    }
  }

  @override
  Future<Either<NetworkFailure, AuthUser>> socialAuth(
      SocialAuthRequestModel request) async {
    try {
      final AuthModel authModel = await apiClient.socialAuth(request.toJson());
      return Right(authModel.toEntity());
    } on DioException catch (e) {
      return Left(NetworkFailure(
        message: e.message,
        code: e.response?.statusCode,
      ));
    }
  }
}
