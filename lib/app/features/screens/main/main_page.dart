part of 'imports.dart';

class MainNavPage extends StatelessWidget {
  const MainNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.find<MainNavController>();
    return Obx(() {
      return Scaffold(
        body: IndexedStack(
          index: navController.currentIndex.value,
          children: navController.pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navController.currentIndex.value,
          onTap: navController.changePage,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Leaderboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Profile',
            ),
            // Add more items if needed
          ],
        ),
      );
    });
  }
}
