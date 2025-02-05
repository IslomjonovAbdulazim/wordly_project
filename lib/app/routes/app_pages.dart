import 'package:get/get.dart';
import 'package:wordly_project/app/bindings/home/home_binding.dart';
import 'package:wordly_project/app/bindings/home/home_impl_binding.dart';
import 'package:wordly_project/app/bindings/leaderboard/leaderboard_binding.dart';
import 'package:wordly_project/app/bindings/profile/profile_binding.dart';
import 'package:wordly_project/app/bindings/screens/main_binding.dart';
import 'package:wordly_project/app/features/screens/main/imports.dart';
import 'package:wordly_project/domain/repositories/home_repository.dart';

import '../bindings/auth/auth_impl_binding.dart';
import '../bindings/auth/confirm_otp_binding.dart';
import '../bindings/auth/forgot_password_binding.dart';
import '../bindings/auth/onboarding_binding.dart';
import '../bindings/auth/sign_in_binding.dart';
import '../bindings/auth/sign_up_binding.dart';
import '../bindings/auth/verify_email_binding.dart';
import '../bindings/todo_binding.dart';
import '../features/auth/confirm_otp/imports.dart';
import '../features/auth/forgot_password/imports.dart';
import '../features/auth/onboarding/imports.dart';
import '../features/auth/sign_in/imports.dart';
import '../features/auth/sign_up/imports.dart';
import '../features/auth/verify_email/imports.dart';
import '../features/screens/offline/imports.dart';
import '../features/screens/splash/splash_page.dart';
import '../pages/todo/todo_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.todo,
      page: () => const TodoPage(),
      binding: TodoBinding(),
    ),

    /// Main
    GetPage(
      name: AppRoutes.main,
      page: () => MainNavPage(),
      bindings: [
        HomeImplBinding(),
        HomeBinding(),
        MainNavBinding(),
        LeaderboardBinding(),
        ProfileBinding(),
      ],
    ),

    /// HOME

    /// LEADERBOARD

    /// PROFILE

    /// AUTH
    GetPage(
      name: AppRoutes.verifyEmail,
      page: () => VerifyEmailPage(),
      bindings: [
        VerifyEmailBinding(),
        AuthImplBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => OnboardingPage(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => SignInPage(),
      bindings: [
        SignInBinding(),
        AuthImplBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => SignUpPage(),
      bindings: [
        SignUpBinding(),
        AuthImplBinding(),
        VerifyEmailBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.forgotPassword,
      page: () => ForgotPasswordPage(),
      bindings: [
        ForgotPasswordBinding(),
        ConfirmOtpBinding(),
        AuthImplBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.confirmOTP,
      page: () => ConfirmOTPPage(),
      bindings: [
        ConfirmOtpBinding(),
        AuthImplBinding(),
      ],
    ),

    /// SCREENS
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashPage(),
    ),
    GetPage(
      name: AppRoutes.offline,
      page: () => OfflinePage(),
    ),
  ];
}
