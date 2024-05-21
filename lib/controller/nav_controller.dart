import 'package:artist_home/view/screens/home_page.dart';
import 'package:artist_home/view/screens/inbox_page.dart';
import 'package:artist_home/view/screens/profile_page.dart';
import 'package:artist_home/view/screens/video_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavController extends GetxController {
  var selectedTab = 0.obs;

  final homeNavKey = GlobalKey<NavigatorState>();
  final videoNavKey = GlobalKey<NavigatorState>();
  final inboxNavKey = GlobalKey<NavigatorState>();
  final profileNavKey = GlobalKey<NavigatorState>();

  List<NavModel> items = [];

  @override
  void onInit() {
    super.onInit();
    items = [
      NavModel(page: HomePage(), navKey: homeNavKey),
      NavModel(page: const VideoPage(), navKey: videoNavKey),
      NavModel(page: const InboxPage(), navKey: inboxNavKey),
      NavModel(page: const ProfilePage(), navKey: profileNavKey),
    ];
  }

  void changePage(int index) {
    selectedTab.value = index;
  }
}

class NavModel {
  final Widget page;
  final GlobalKey<NavigatorState> navKey;

  NavModel({required this.page, required this.navKey});
}