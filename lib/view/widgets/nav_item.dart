import 'package:artist_home/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget navItem(String icon, bool selected, String text, {Function()? onTap}) {
  return Expanded(
    child: InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            color: selected ? navBarSelectedColor : navBarFGColor,
            width: 25,
            height: 25,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: selected ? navBarSelectedColor : navBarFGColor,
            ),
          ),
        ],
      ),
    ),
  );
}
