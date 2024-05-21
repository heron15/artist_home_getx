import 'package:flutter/material.dart';

class NavModel {
  final String route;
  final GlobalKey<NavigatorState> navKey;

  NavModel({required this.route, required this.navKey});
}
