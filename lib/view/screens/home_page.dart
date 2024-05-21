import 'package:artist_home/data/category.dart';
import 'package:artist_home/utils/assets_images.dart';
import 'package:artist_home/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/event.dart';
import '../../data/gradient_color_category.dart';
import '../../data/gradient_color_event.dart';
import '../widgets/category_Item_dec.dart';
import '../widgets/custom_event_item.dart';
import '../widgets/event_text.dart';
import '../widgets/full_carousel_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ///-------App Bar Part---------///

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 15,
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      height: 50,
                      width: 50,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage(AssetsImages.homeProfileImage),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Expanded(
                      child: Text.rich(
                        TextSpan(
                          text: 'Good morning!\n',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: secondTextColor,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Mehedi Hassan',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: textColor,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left, // Center the text
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.bell),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                    )
                  ],
                ),
              ),

              ///-------Search Part---------///

              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 15,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                          height: 37,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            child: TextField(
                              controller: _searchController,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.search),
                                hintText: 'Search here.',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  borderSide: BorderSide.none,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(24),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding:
                                    const EdgeInsets.symmetric(vertical: 8),
                              ),
                              onChanged: (value) {
                                print('Search query: $value');
                              },
                            ),
                          )),
                    ),
                    Container(
                      height: 38,
                      width: 38,
                      margin: const EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        color: navBarSelectedColor,
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            blueG1,
                            blueG2,
                            blueG3,
                          ],
                        ),
                      ),
                      child: const Icon(
                        Icons.filter_alt_outlined,
                        color: white,
                      ),
                    ),
                  ],
                ),
              ),

              ///-------Carousel Slider---------///

              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: FullCarouselView(),
              ),

              ///-------Category---------///

              Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(left: 15),
                    child: const Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Add some space between the text and the ListView
                  SizedBox(
                    height: 40, // Set a fixed height for the ListView
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryItem.length,
                      itemBuilder: (context, index) {
                        final selectedGradient =
                            gradients[index % gradients.length];

                        return CategoryItemDec(
                          selectedGradient: selectedGradient,
                          name: categoryItem[index]['name']!,
                          assetImage: categoryItem[index]['img']!,
                          onTap: () {},
                        );
                      },
                    ),
                  ),
                ],
              ),

              ///------Events------///

              const EventText(),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: eventItem.length,
                  itemBuilder: (context, index) {
                    final selectedGradient =
                        gradientsEvent[index % gradientsEvent.length];
                    return CustomEventItem(
                      imageName: eventItem[index]['img']!,
                      eventItemName: eventItem[index]['name']!,
                      selectedGradient: selectedGradient,
                      onTap: () {},
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

