import 'package:get/get.dart';

import '../../../utils/services/social_auth_service.dart';

class SignInController extends GetxController {
  // Observables
  Rx<SocialUser?> socialUser = Rx<SocialUser?>(null);
  RxBool isLoading = false.obs;
  RxString errorMessage = ''.obs;

  Future<void> loginWithGoogle() async {
    try {
      isLoading.value = true;
      final user = await SocialAuthService.signInWithGoogle();
      if (user != null) {
        socialUser.value = user;
      }
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loginWithFacebook() async {
    try {
      isLoading.value = true;
      final user = await SocialAuthService.signInWithFacebook();
      if (user != null) {
        socialUser.value = user;
      }
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loginWithApple() async {
    try {
      isLoading.value = true;
      final user = await SocialAuthService.signInWithApple();
      if (user != null) {
        socialUser.value = user;
      }
    } catch (e) {
      errorMessage.value = e.toString();
    } finally {
      isLoading.value = false;
    }
  }

  void logout() {
    socialUser.value = null;
  }
}
