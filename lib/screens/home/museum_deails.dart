import 'package:carousel_slider/carousel_slider.dart';
import 'package:egyptexplore/const/colors/color.dart';
import 'package:egyptexplore/screens/home/PANORAM.dart';
import 'package:egyptexplore/screens/home/museums_screen.dart';
import 'package:egyptexplore/widgets/item_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../widgets/item_museum_details.dart';

class MuseumsDetails extends StatefulWidget {
  const MuseumsDetails({super.key});

  @override
  State<MuseumsDetails> createState() => _MuseumsDetailsState();
}

class _MuseumsDetailsState extends State<MuseumsDetails> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> listSlider = [
      itemSlider(
          imageSlider: "assets/images/museum_details.png",
          imageIcon: 'assets/images/icons/icon_360.png',
          width: 40),
      itemSlider(
          imageSlider: "assets/images/museum_details.png",
          imageIcon: 'assets/images/icons/icon_360.png',
          width: 40),
      itemSlider(
          imageSlider: "assets/images/museum_details.png",
          imageIcon: 'assets/images/icons/icon_360.png',
          width: 40),
      itemSlider(
          imageSlider: "assets/images/museum_details.png",
          imageIcon: 'assets/images/icons/icon_360.png',
          width: 40),
      itemSlider(
          imageSlider: "assets/images/museum_details.png",
          imageIcon: 'assets/images/icons/icon_360.png',
          width: 40),
      itemSlider(
          imageSlider: "assets/images/museum_details.png",
          imageIcon: 'assets/images/icons/icon_360.png',
          width: 30),
    ];

    initState() {
      super.initState();
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (c) => const MuseumsScreen(),
              ),
            );
          },
        ),
        toolbarHeight: 90,
        centerTitle: true,
        title: Container(
            padding: const EdgeInsets.only(top: 20),
            width: 200,
            child: const Text(
              'The Grand Egyptian Museum',
              maxLines: 2,
              textAlign: TextAlign.center,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (c)=>Panorama()));
                  },
                  child: CarouselSlider(
                    
                    items: listSlider,
                    options: CarouselOptions(
                      autoPlay: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      height: 200,
                      viewportFraction: 2.4,
                      enlargeCenterPage: true,
                      animateToClosest: true,
                      autoPlayCurve: Curves.easeInQuint,
                    ),
                  ),
                ),
                Center(
                  child: AnimatedSmoothIndicator(
                    activeIndex: _currentIndex,
                    count: listSlider.length,
                    effect: ScrollingDotsEffect(
                        activeDotScale: 1.5,
                        activeDotColor: AppColor.primaryAppColor,
                        dotColor: const Color(0xFF4B4B4B),
                        dotHeight: 10,
                        dotWidth: 10,
                        spacing: 11,
                        strokeWidth: 0.5,
                        radius: 14,
                        paintStyle: PaintingStyle.fill),
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/icons/icon-loction.png",
                      width: 30,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Kafr Nassar, Al Giza Desert, Giza Governorate 3513204",
                      style: TextStyle(
                          color: AppColor.primaryAppColor, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 23,
                ),
                Text(
                  "Families(multiple)",
                  style: TextStyle(color: AppColor.primaryAppColor),
                ),
                const SizedBox(
                  height: 26,
                ),
                const Text(
                  "The Museum will host over 100,000 artifacts from ancient Egyptian civilization, including the complete Tutankhamun collection, and many pieces will be displayed for the first time. ",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                itemMuseumDetails(context,
                    image: 'assets/images/tutankamun.png',
                    kingName: 'King Tutankhamun',
                    detailsKingName:
                        'King Tutankhamun, also known as King Tut, was a pharaoh who ruled Egypt from 1332 to 1323 B.C. ....see more'),
                const SizedBox(
                  height: 20,
                ),
                itemMuseumDetails(context,
                    image: 'assets/images/tutankamun.png',
                    kingName: 'KQueen Nefertiti',
                    detailsKingName:
                        'Nefertiti was the principal wife of the pharaoh Amenhotep IV ....see more')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
