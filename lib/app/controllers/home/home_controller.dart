import 'package:get/get.dart';
import 'package:wordly_project/domain/entities/home/book_entity.dart';
import 'package:wordly_project/domain/repositories/home_repository.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<BookEntity>? currentBook;
  List<BookEntity> books = [];

  Future<void> init() async {
    final api = Get.find<HomeRepository>();
    final books = await api.books();
  }

  void selectBook(BookEntity? value) {
    if (value == null) return;
    currentBook?.value = value;
  }
}
