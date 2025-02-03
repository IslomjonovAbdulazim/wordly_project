import 'package:google_sign_in/google_sign_in.dart';
import 'package:wordly_project/utils/helpers/logger.dart';

class SocialUser {
  final String? name;
  final String? email;
  final String? avatarUrl;
  final String? id;
  final String? accessToken;

  SocialUser({
    this.name,
    this.email,
    this.avatarUrl,
    this.id,
    this.accessToken,
  });

  @override
  String toString() {
    return 'SocialUser(name: $name, email: $email, avatarUrl: $avatarUrl, id: $id, token: $accessToken)';
  }
}

class SocialAuthService {
  /// Google Sign In
  static Future<SocialUser?> signInWithGoogle() async {
    try {
      Logger.log("Boshlandi");
      final GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: ['email', 'profile'],
        clientId:
            "217464560084-a05qht7va3a3knarqq4e2j0ar780vr1f.apps.googleusercontent.com",
      );

      final GoogleSignInAccount? account = await googleSignIn.signIn();
      if (account == null) {
        // User canceled the sign-in
        return null;
      }

      final GoogleSignInAuthentication auth = await account.authentication;

      return SocialUser(
        name: account.displayName,
        email: account.email,
        avatarUrl: account.photoUrl,
        id: account.id,
        accessToken: auth.accessToken,
      );
    } catch (e) {
      Logger.log("Error");

      rethrow;
    }
  }
}


