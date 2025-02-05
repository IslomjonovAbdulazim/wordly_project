import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../../../domain/repositories/home_repository.dart';
import '../../../utils/constants/api_constants.dart';
import '../../data/providers/home_api_client.dart';
import '../../data/repositories/home_repository_impl.dart';

class HomeImplBinding extends Bindings {
  @override
  void dependencies() {
    Dio dio = Dio(BaseOptions(
      baseUrl: ApiConstants.baseURL,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ));

    Get.put<HomeApiClient>(HomeApiClient(dio));
    Get.put<HomeRepository>(HomeRepositoryImpl(dio: dio));
  }
}
