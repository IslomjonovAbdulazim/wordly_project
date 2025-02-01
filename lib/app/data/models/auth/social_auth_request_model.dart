class SocialAuthRequestModel {
  late final String provider; // "google", "apple", or "facebook"
  late final String token;    // The token obtained from the social login SDK

  SocialAuthRequestModel({
    required this.provider,
    required this.token,
  });

  factory SocialAuthRequestModel.fromJson(Map<String, dynamic> json) {
    return SocialAuthRequestModel(
      provider: json['provider'],
      token: json['token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'provider': provider,
      'token': token,
    };
  }

  @override
  String toString() => toJson().toString();
}