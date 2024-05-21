import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCarouselItem extends StatelessWidget {
  final String image;
  final String text01;
  final String text02;
  final String text03;
  final Color carouselTextColor01;
  final Color carouselTextColor02;
  final Color carouselTextColor03;
  final Color carouselBgColor;
  final VoidCallback? onPressed;

  const CustomCarouselItem({
    super.key,
    required this.image,
    required this.text01,
    required this.text02,
    required this.text03,
    required this.carouselTextColor01,
    required this.carouselTextColor02,
    required this.carouselTextColor03,
    required this.carouselBgColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 5,
        ),
        child: SizedBox(
          height: 250,
          width: double.infinity,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                heightFactor: 10,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  height: 158,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: carouselBgColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: -5,
                        blurRadius: 7,
                        offset: const Offset(2, 10),
                        blurStyle: BlurStyle.normal,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: -20,
                bottom: 15,
                child: Container(
                  height: 228,
                  width: 229,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 55,
                left: 15,
                child: Text(
                  text01,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: carouselTextColor01,
                  ),
                ),
              ),
              Positioned(
                top: 85,
                left: 15,
                child: Text(
                  text02,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: carouselTextColor02,
                  ),
                ),
              ),
              Positioned(
                top: 110,
                left: 15,
                child: SizedBox(
                  width: 160,
                  child: Text(
                    text03,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: carouselTextColor03,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
