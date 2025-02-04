part of 'imports.dart';

// Example: each tab is a navigator
class MainNavPage extends StatelessWidget {
  const MainNavPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MainNavController navController = Get.put(MainNavController());

    return Obx(() {
      return Scaffold(
        body: IndexedStack(
          index: navController.currentIndex.value,
          children: [
            Navigator(
              key: Get.nestedKey(1),
              onGenerateRoute: (settings) {
                if (settings.name == '/') {
                  return GetPageRoute(
                    settings: settings,
                    page: () => HomePage(),
                  );
                }
                // Additional sub-routes for tab 1 here
              },
            ),
            Navigator(
              key: Get.nestedKey(2),
              onGenerateRoute: (settings) {
                if (settings.name == '/') {
                  return GetPageRoute(
                    settings: settings,
                    page: () => SearchPage(),
                  );
                }
                // Additional sub-routes for tab 2 here
              },
            ),
            // ... Add more if needed
          ],
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
              label: 'Search',
            ),
            // ...
          ],
        ),
      );
    });
  }
}
