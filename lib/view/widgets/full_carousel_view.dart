import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/carousel_controller.dart';
import '../../utils/assets_images.dart';
import '../../utils/colors.dart';
import 'carousel_item.dart';

class FullCarouselView extends StatelessWidget {
  const FullCarouselView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GetXCarouselController());
    return Column(
      children: [
        SizedBox(
          height: 209,
          width: double.infinity,
          child: CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 0.9,
              onPageChanged: (index, _) => controller.updateCarouselItem(index),
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
            ),
            items: [
              CustomCarouselItem(
                image: AssetsImages.homeCarouselImage03,
                text01: 'Enjoy Your Time',
                text02: 'Exclusive Offers',
                text03:
                    'Enjoy special discounts, promotions, and perks reserve',
                carouselBgColor: carouselColor03,
                carouselTextColor01: white,
                carouselTextColor02: white,
                carouselTextColor03: white,
                onPressed: () {},
              ),
              CustomCarouselItem(
                image: AssetsImages.homeCarouselImage02,
                text01: 'More Offer',
                text02: 'More entertainment',
                text03: 'Enjoy 25% discounts, promotions, and perks reserve',
                carouselTextColor01: white,
                carouselTextColor02: carouselColor02,
                carouselTextColor03: white,
                carouselBgColor: carouselColor01,
                onPressed: () {},
              ),
              CustomCarouselItem(
                image: AssetsImages.homeCarouselImage01,
                text01: 'Explore Your Talent ',
                text02: 'Exclusive Offers',
                text03:
                    'Enjoy special discounts, promotions, and perks reserve ',
                carouselBgColor: carouselColor02,
                carouselTextColor01: carouselTextColor01,
                carouselTextColor02: carouselTextColor02,
                carouselTextColor03: carouselTextColor03,
                onPressed: () {},
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < 3; i++)
                  Container(
                    width: controller.carouselCurrentIndex.value == i ? 37 : 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: carouselDotlor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
