import 'package:get/get.dart';

import '../bindings/auth/auth_impl_binding.dart';
import '../bindings/auth/confirm_otp_binding.dart';
import '../bindings/auth/forgot_password_binding.dart';
import '../bindings/auth/onboarding_binding.dart';
import '../bindings/auth/sign_in_binding.dart';
import '../bindings/auth/sign_up_binding.dart';
import '../bindings/auth/verify_email_binding.dart';
import '../bindings/home/home_binding.dart';
import '../bindings/todo_binding.dart';
import '../features/auth/confirm_otp/imports.dart';
import '../features/auth/forgot_password/imports.dart';
import '../features/auth/onboarding/imports.dart';
import '../features/auth/sign_in/imports.dart';
import '../features/auth/sign_up/imports.dart';
import '../features/auth/verify_email/imports.dart';
import '../features/home/home/imports.dart';
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
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashPage(),
    ),
    GetPage(
      name: AppRoutes.offline,
      page: () => OfflinePage(),
    ),

    /// home

    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),

    /// auth
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
  ];
}
