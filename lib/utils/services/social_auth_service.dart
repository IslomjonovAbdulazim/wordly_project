import 'dart:io' show Platform;

import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

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
      final GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: ['email', 'profile'],
      );

      final GoogleSignInAccount? account = await googleSignIn.signIn();
      if (account == null) {
        // User canceled the sign-in
        return null;
      }

      final GoogleSignInAuthentication auth = await account.authentication;

      // Access token could be used to authenticate with your backend
      final String? accessToken = auth.accessToken;
      final String? idToken = auth.idToken;

      return SocialUser(
        name: account.displayName,
        email: account.email,
        avatarUrl: account.photoUrl,
        id: account.id,
        accessToken: accessToken,
      );
    } catch (e) {
      rethrow;
    }
  }

  /// Facebook Sign In
  static Future<SocialUser?> signInWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login(
        permissions: ['email', 'public_profile'],
      );

      switch (result.status) {
        case LoginStatus.success:
          final AccessToken accessToken = result.accessToken!;
          final userData = await FacebookAuth.instance.getUserData(
            fields: "name,email,picture.width(200)",
          );

          return SocialUser(
            name: userData["name"],
            email: userData["email"],
            avatarUrl: userData["picture"]["data"]["url"],
            id: userData["id"],
            accessToken: accessToken.tokenString,
          );
        case LoginStatus.cancelled:
          // User canceled the sign-in
          return null;
        case LoginStatus.failed:
          throw Exception('Facebook login failed: ${result.message}');
        case LoginStatus.operationInProgress:
          // Currently in progress, can ignore or handle
          return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  /// Apple Sign In
  /// On Android, this uses a web popup. On iOS (13+), it uses native Apple Sign In.
  static Future<SocialUser?> signInWithApple() async {
    try {
      if (!Platform.isIOS && !Platform.isMacOS && !Platform.isAndroid) {
        throw Exception('Sign in with Apple is not supported on this platform');
      }

      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      final String? firstName = credential.givenName;
      final String? lastName = credential.familyName;
      final String? email = credential.email;

      // Apple sign in might not always provide email/name if user has hidden it previously
      final String? fullName = (firstName != null && lastName != null)
          ? '$firstName $lastName'
          : null;

      return SocialUser(
        name: fullName,
        email: email,
        avatarUrl: null,
        // Apple does not provide avatar
        id: credential.userIdentifier,
        accessToken: credential.identityToken,
      );
    } catch (e) {
      rethrow;
    }
  }
}
