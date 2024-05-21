import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class EventText extends StatelessWidget {
  const EventText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
        bottom: 10
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Events',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: textColor
            ),
          ),
          Text(
            'See All',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: seeAllTextColor
            ),
          ),
        ],
      ),
    );
  }
}