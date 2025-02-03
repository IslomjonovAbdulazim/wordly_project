import 'package:get/get.dart';
import 'package:wordly_project/app/bindings/auth/auth_impl_binding.dart';
import 'package:wordly_project/app/bindings/auth/confirm_otp_binding.dart';
import 'package:wordly_project/app/bindings/auth/forgot_password_binding.dart';
import 'package:wordly_project/app/bindings/auth/onboarding_binding.dart';
import 'package:wordly_project/app/bindings/auth/sign_in_binding.dart';
import 'package:wordly_project/app/bindings/auth/sign_up_binding.dart';
import 'package:wordly_project/app/features/auth/confirm_otp/imports.dart';
import 'package:wordly_project/app/features/auth/forgot_password/imports.dart';
import 'package:wordly_project/app/features/auth/onboarding/imports.dart';
import 'package:wordly_project/app/features/auth/sign_in/imports.dart';
import 'package:wordly_project/app/features/auth/sign_up/imports.dart';
import 'package:wordly_project/app/features/screens/splash/splash_page.dart';

import '../bindings/todo_binding.dart';
import '../features/screens/offline/imports.dart';
import '../pages/todo/todo_page.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.todo,
      page: () => const TodoPage(),
      binding: TodoBinding(),
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashPage(),
    ),
    GetPage(
      name: AppRoutes.offline,
      page: () => OfflinePage(),
    ),

    /// auth
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
      ],
    ),
    GetPage(
      name: AppRoutes.forgotPassword,
      page: () => ForgotPasswordPage(),
      bindings: [
        ForgotPasswordBinding(),
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
  ];
}
