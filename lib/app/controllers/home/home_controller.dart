import 'package:get/get.dart';
import 'package:wordly_project/domain/entities/home/book_entity.dart';
import 'package:wordly_project/domain/repositories/home_repository.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  List<BookEntity> books = [];

  Future<void> init() async {
    final api = Get.find<HomeRepository>();
    final books = await api.books();
  }
}
