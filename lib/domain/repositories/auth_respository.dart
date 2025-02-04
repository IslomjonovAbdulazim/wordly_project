import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:wordly_project/app/data/models/auth/sign_up_request_model.dart';
import 'package:wordly_project/domain/entities/auth/sign_up_request_entity.dart';

import '../../app/data/models/auth/change_password_request_model.dart';
import '../../app/data/models/auth/confirm_otp_request_model.dart';
import '../../app/data/models/auth/forgot_password_request_model.dart';
import '../../app/data/models/auth/sign_in_request_model.dart';
import '../../app/data/models/auth/social_auth_request_model.dart';
import '../../utils/errors/network_failure.dart';
import '../entities/auth_user.dart';

abstract class AuthRepository {
  Future<Either<NetworkFailure, AuthUser>> signInWithEmail(
    SignInRequestModel request,
  );

  Future<Either<NetworkFailure, dynamic>> signUpWithEmail(
    SignUpRequestModel request,
  );

  Future<Either<NetworkFailure, dynamic>> forgotPassword(
    ForgotPasswordRequestModel request,
  );

  Future<Either<NetworkFailure, HttpResponse>> confirmOtp(
    ConfirmOtpRequestModel request,
  );

  Future<Either<NetworkFailure, dynamic>> changePassword(
    ChangePasswordRequestModel request,
  );

  Future<Either<NetworkFailure, AuthUser>> socialAuth(
    SocialAuthRequestModel request,
  );
}
