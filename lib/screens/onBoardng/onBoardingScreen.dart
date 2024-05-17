import 'package:egyptexplore/const/colors/color.dart';
import 'package:egyptexplore/screens/authntection/login_or_create.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageControler = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      PageView(
        controller: pageControler,
        children: [
          Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/onBoarding_1.png',
                  ),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 200.w, top: 80.h),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (c) => const LoginOrCreate(),
                            ),
                          );
                        },
                        child: Image.asset('assets/images/button.png')),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Explore EGYPT with the power of AI ',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Explore the wonders of Egypt like never before, with a unique blend of 3D visuals, 360-degree panoramas, and cutting-edge scanning technology to bring the marvels of this ancient land to life in unprecedented detail',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
          Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/onBoarding2.png',
                  ),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 200.w, top: 80.h),
                     child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (c) => const LoginOrCreate(),
                            ),
                          );
                        },
                        child: Image.asset('assets/images/button.png')),
                  ),
                  SizedBox(
                    height: 280.h,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Virtual Reality',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'You can go on a virtual trip to Egyptian historical places from your home through Egypt Explorex',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
          Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/onBoarding3.png',
                  ),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 200.w, top: 80.h),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (c) => const LoginOrCreate(),
                            ),
                          );
                        },
                        child: Image.asset('assets/images/button.png')),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Scanning ',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'You can see the statues more differently and enjoyably than usual by opening the Egypt Explorex Camera and enjoying watching the statue in its human form as it talks about its history',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
          Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/onBoarding_4+.png',
                  ),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 200.w, top: 80.h),
               child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (c) => const LoginOrCreate(),
                            ),
                          );
                        },
                        child: Image.asset('assets/images/button.png')),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '3D',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'You can see the history of all the historical monuments and landmarks and watch from a different angle with the 3D feature.',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
      Container(
          padding: const EdgeInsets.only(left:19, bottom: 100,right: 19),
            alignment: Alignment.bottomCenter,
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


              SmoothPageIndicator(
                controller: pageControler,
                count: 4,
                effect: ExpandingDotsEffect(
                    activeDotColor: AppColor.primaryAppColor,
                    dotColor: Colors.black,
                    dotHeight: 12,
                    dotWidth: 12),
              ),

            GestureDetector(onTap: (){
              pageControler.nextPage(duration: const Duration(seconds: 3), curve: Curves.bounceInOut);
            },
              child: Image.asset('assets/images/button_bootm.png'),
            )
          ],
        ),
      ),
    ]));
  }
}
