import 'package:egyptexplore/const/Text.dart';
import 'package:egyptexplore/const/colors/color.dart';
import 'package:egyptexplore/screens/more/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'museums_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/home.png",
                ),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, top: 40.h),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c)=>const MenuScreen(),),);
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.menu_outlined,
                    color: Color(0xFF9E6D4D),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: Image.asset('assets/images/logo_home.png',width: 130.w,),
            ),
            SizedBox(
              height: 100.h,
            ),
            GestureDetector(
              child: Center(
                child: Container(
                  width: 321.w,
                  height: 92.h,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff9E6D4D), width: 1.8.w),
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/icons/scan_icon.png",
                        width: 24.w,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Scan',
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: AppColor.primaryAppColor,
                            fontVariations: const [
                              FontVariation('wght', 500.0)
                            ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (c) => const MuseumsScreen()));
              },
              child: Center(
                child: Container(
                  width: 321.w,
                  height: 92.h,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xff9E6D4D), width: 1.8),
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/images/icons/home_icon.png",
                        width: 24.w,
                      ),
                       SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        'Journey From Home',
                        style: TextStyle(
                          fontFamily: TextAPP().nameFont,
                            color: AppColor.primaryAppColor,
                            fontVariations: const [
                              FontVariation('wght', 500.0)
                            ],
                            fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
