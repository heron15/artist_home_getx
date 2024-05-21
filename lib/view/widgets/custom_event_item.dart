import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class CustomEventItem extends StatelessWidget {
  CustomEventItem({
    super.key,
    required this.imageName,
    required this.eventItemName,
    required this.selectedGradient,
    this.onTap,
  });

  final String imageName;
  final String eventItemName;
  final List<Color> selectedGradient;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 120,
            height: 120,
            margin: const EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: selectedGradient,
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/event/$imageName.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            eventItemName,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: eventCatTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
