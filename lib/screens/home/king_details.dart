import 'package:carousel_slider/carousel_slider.dart';
import 'package:egyptexplore/screens/home/museum_deails.dart';
import 'package:egyptexplore/screens/ss.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:o3d/o3d.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../const/colors/color.dart';

class KingDetails extends StatefulWidget {
  const KingDetails({super.key});

  @override
  State<KingDetails> createState() => _KingDetailsState();
}

class _KingDetailsState extends State<KingDetails> {
  late Object jet;





  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> listSlider = [
      Image.asset(
        "assets/images/nefertiti.png",
        width: 200,
        height: 200,
      ),
      Image.asset(
        "assets/images/nefertiti.png",
        width: 200,
        height: 200,
      ),
      Image.asset(
        "assets/images/nefertiti.png",
        width: 200,
        height: 200,
      ),
      Image.asset(
        "assets/images/nefertiti.png",
        width: 200,
        height: 200,
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Nefertiti',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (c) => MuseumsDetails(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                items: listSlider,
                options: CarouselOptions(
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  height: 250,
                  viewportFraction: 2.4,
                  enlargeCenterPage: true,
                  animateToClosest: true,
                  autoPlayCurve: Curves.easeInQuint,
                ),
              ),
              Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: currentIndex,
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
              const SizedBox(
                height: 10,
              ),
              Text(
                'Families:(18th)',
                style: TextStyle(color: AppColor.primaryAppColor),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                width: 330,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: AppColor.primaryAppColor)),
                child: const Text(
                  'Nefertiti was the principal wife of the pharaoh Amenhotep IV (later Akhenaten),and lived in the 14th century BC. Written records providing concrete historical facts about her origins, her marriage, her family life, political status and death are scarce.',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => const PanoramaScreen(),
                    ),
                  );
                },
                child: Stack(
                  children: [

                    Image.asset('assets/images/nef2.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
