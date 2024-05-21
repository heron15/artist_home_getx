import 'package:artist_home/utils/assets_images.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import 'nav_item.dart';

class NavBar extends StatelessWidget {
  final int pageIndex;
  final Function(int) onTap;

  const NavBar({
    super.key,
    required this.pageIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
        bottom: 10,
      ),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(90),
          child: Container(
            height: 55,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [
                  navBarBGColorG1,
                  navBarBGColorG2,
                ],
              ),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                navItem(
                  AssetsImages.navHomeIcon,
                  pageIndex == 0,
                  'Home',
                  onTap: () {
                    return onTap(0);
                  },
                ),
                navItem(
                  AssetsImages.navVideoIcon,
                  pageIndex == 1,
                  'Video',
                  onTap: () {
                    return onTap(1);
                  },
                ),
                const SizedBox(
                  width: 50,
                ),
                navItem(
                  AssetsImages.navInboxIcon,
                  pageIndex == 2,
                  'Inbox',
                  onTap: () {
                    return onTap(2);
                  },
                ),
                navItem(
                  AssetsImages.navProfileIcon,
                  pageIndex == 3,
                  'Profile',
                  onTap: () {
                    return onTap(3);
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}