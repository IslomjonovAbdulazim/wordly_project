part of 'imports.dart';

class OfflinePage extends StatelessWidget {
  OfflinePage({super.key});

  final connectivityService = Get.find<ConnectivityService>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (connectivityService.isOnline.value) {
        if (Get.currentRoute == AppRoutes.offline) {
          // Get.back();
        }
      }
      return Scaffold(
        backgroundColor: context.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    ImageConstants.connectionLost,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
