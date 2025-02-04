import 'package:get/get.dart';
import 'package:wordly_project/domain/entities/home/book_entity.dart';

class HomeController extends GetxController {
  List<BookEntity> books = [];

  Future<void> init() async {
    books = [];
  }
}
