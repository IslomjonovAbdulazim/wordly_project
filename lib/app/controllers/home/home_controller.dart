import 'package:get/get.dart';
import 'package:wordly_project/domain/entities/home/book_entity.dart';
import 'package:wordly_project/domain/entities/home/unit_entity.dart';
import 'package:wordly_project/domain/repositories/home_repository.dart';
import 'package:wordly_project/utils/helpers/logger.dart';

import '../../../utils/helpers/status_code_helper.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<BookEntity>? currentBook;
  Rx<List<BookEntity>> books = Rx<List<BookEntity>>([]);
  Rx<List<UnitEntity>> units = Rx<List<UnitEntity>>([]);

  HomeController() {
    Logger.log("sent-------------------------------");
    init();
  }

  Future<void> init() async {
    isLoading.value = true;
    final api = Get.find<HomeRepository>();
    final result = await api.books();
    result.fold(
      (failure) {
        StatusCodeService.showSnackbar(failure.statusCode ?? 505);
      },
      (response) {
        if (response.isNotEmpty) {
          books.value = response;
        } else {
          StatusCodeService.showSnackbar(505);
        }
      },
    );
    await loadUnits();
    isLoading.value = false;
  }

  Future<void> loadUnits() async {
    isLoading.value = true;
    final api = Get.find<HomeRepository>();

    final result2 = await api.units(currentBook?.value.id ?? 1);
    result2.fold(
      (failure) {
        StatusCodeService.showSnackbar(failure.statusCode ?? 505);
      },
      (response) {
        if (response.isNotEmpty) {
          units.value = response;
        } else {
          StatusCodeService.showSnackbar(505);
        }
      },
    );
    isLoading.value = false;
  }

  void selectBook(BookEntity? value) async {
    if (value == null) return;
    currentBook?.value = value;
    Logger.log("-------------${currentBook?.value.id}");
    await loadUnits();
  }
}
