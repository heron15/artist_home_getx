import 'package:flutter/material.dart';

class CategoryItemDec extends StatelessWidget {
  const CategoryItemDec({
    super.key,
    required this.selectedGradient,
    required this.name,
    required this.assetImage,
    this.onTap,
  });

  final List<Color> selectedGradient;
  final VoidCallback? onTap;
  final String name;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        margin: const EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: selectedGradient,
          ),
        ),
        child: IntrinsicWidth(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(
                  left: 10,
                  right: 4,
                  bottom: 6,
                  top: 6,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/category/$assetImage.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
