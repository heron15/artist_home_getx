import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/nav_controller.dart';
import '../../utils/colors.dart';
import '../widgets/nav_bar.dart';

class NavMain extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  NavMain({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (navController
                .items[navController.selectedTab.value].navKey.currentState
                ?.canPop() ??
            false) {
          navController
              .items[navController.selectedTab.value].navKey.currentState
              ?.pop();
          return false;
        } else {
          return false;
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // Ensure the Scaffold is transparent
        body: Stack(
          children: [
            // Page content
            Obx(
              () {
                return IndexedStack(
                  index: navController.selectedTab.value,
                  children: navController.items.map((page) {
                    return Navigator(
                      key: page.navKey,
                      onGenerateInitialRoutes: (navigator, initialRoute) {
                        return [
                          MaterialPageRoute(
                            builder: (context) => page.page,
                          ),
                        ];
                      },
                    );
                  }).toList(),
                );
              },
            ),
            // Bottom Navigation Bar
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Obx(
                () {
                  return NavBar(
                    pageIndex: navController.selectedTab.value,
                    onTap: (index) {
                      navController.changePage(index);
                    },
                  );
                },
              ),
            ),

            // Floating Action Button
            Positioned(
              bottom: 50,
              left: MediaQuery.of(context).size.width / 2 - 25,
              child: SizedBox(
                height: 50,
                width: 50,
                child: FloatingActionButton(
                  backgroundColor: navBarSelectedColor,
                  elevation: 0,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 3,
                      color: navBarBGColorG2,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: white,
                    size: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
