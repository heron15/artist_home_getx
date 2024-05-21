import 'package:artist_home/view/screens/home_page.dart';
import 'package:artist_home/view/screens/inbox_page.dart';
import 'package:artist_home/view/screens/nav_main.dart';
import 'package:artist_home/view/screens/profile_page.dart';
import 'package:artist_home/view/screens/video_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return GetMaterialApp(
      home: NavMain(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/video', page: () => VideoPage()),
        GetPage(name: '/inbox', page: () => InboxPage()),
        GetPage(name: '/profile', page: () => ProfilePage()),
      ],
    );
  }
}
