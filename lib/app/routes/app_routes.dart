// lib/app/routes/app_routes.dart
class AppRoutes {
  static const todo = '/todo';

  /// main
  static const splash = "/";
  static const main = "/main";
  static const offline = "/offline";
  static const home = "$main/home";
  static const saved = "$main/saved";
  static const leaderboard = "$main/leaderboard";
  static const profile = "$main/profile";

  /// auth
  static const onboarding = "/onboarding";
  static const signIn = "$onboarding/sign_in";
  static const signUp = "$onboarding/sign_up";
  static const verifyEmail = "$signUp/verify_email";
  static const forgotPassword = "$signIn/forgot_password";
  static const confirmOTP = "$forgotPassword/confirm_otp";
  static const resetPassword = "$forgotPassword/reset_password";

  /// detail unit
  static const detailUnit = "$home/detail_unit";
  static const quiz = "$detailUnit/quiz";
  static const result = "$quiz/result";

  /// detail saved
  static const detailSaved = "$saved/detail_saved";
  static const newCategory = "$saved/new_saved";

  /// leaderboard
  static const detailProfile = "$leaderboard/detail_profile";

  /// profile
  static const settings = "$profile/settings";
  static const editProfile = "$profile/edit_profile";
}
