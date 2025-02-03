import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../domain/repositories/auth_respository.dart';
import '../../data/providers/auth_api_client.dart';
import '../../data/repositories/auth_repository_iml.dart';

class AuthImplBinding extends Bindings {
  @override
  void dependencies() {
    Dio dio = Dio(BaseOptions(
      baseUrl: "https://api.example.com",
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ));

    Get.lazyPut<AuthApiClient>(() => AuthApiClient(dio));
    Get.lazyPut<AuthRepository>(() => AuthRepositoryImpl(dio: dio));
  }
}
