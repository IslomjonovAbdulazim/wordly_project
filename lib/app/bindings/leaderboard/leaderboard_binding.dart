import 'package:get/get.dart';
import 'package:wordly_project/app/controllers/leaderboard/leaderboard_controller.dart';

class LeaderboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LeaderboardController());
  }
}
