import 'package:get/get.dart';

class GetXCarouselController extends GetxController {
  static GetXCarouselController get instance => Get.find();

  final carouselCurrentIndex = 0.obs;

  void updateCarouselItem(index) {
    carouselCurrentIndex.value = index;
  }
}
