import 'package:egyptexplore/const/colors/color.dart';
import 'package:egyptexplore/screens/home/museum_deails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../generated/l10n.dart';

Widget listItem(context) {
  return ListView.separated(
    shrinkWrap: true,
    itemCount: 12,
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (c, i) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (c) => const MuseumsDetails(),
            ),
          );
        },
        child: Container(
          width: 375.67.w,
          height: 221.18.h,
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.primaryAppColor),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/musuem_1.png",
                    width: 375.w,
                    height: 118.h,
                    fit: BoxFit.fill,
                  ),
                  Image.asset(
                    "assets/images/icons/icon_360.png",
                    width: 32.w,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                         S.of(context).TheGrandEgyptianMuseum,
                          style: TextStyle(
                            fontFamily: 'RobotoSlab',
                            fontSize: 18.sp,
                            color: Colors.black,
                            fontVariations: const [
                              FontVariation('wght', 500.0)
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        SizedBox(
                          width: 26.w,
                          height: 26.h,
                          child: CircleAvatar(
                              maxRadius: 13.w,
                              backgroundColor: AppColor.primaryAppColor,
                              child: Image.asset(
                                'assets/images/icons/heart_icon.png',
                                width: 18.w,
                                height: 18.h,
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Image.asset(
                          "assets/images/icons/icon-loction.png",
                          width: 19.35.w,
                          height: 18.16.h,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        SizedBox(
                            width: 271.3.w,
                            height: 30.97.h,
                            child: Text(
                              S.of(context).LocationMuseum,
                              maxLines: 2,
                              style: TextStyle(
                                  fontFamily: 'RobotoSlab',

                                  color: AppColor.primaryAppColor,
                                  fontVariations: const [
                                    FontVariation('wght', 400.0),
                                  ],
                                  fontSize: 12.sp),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
    },
    separatorBuilder: (BuildContext context, int index) {
      return SizedBox(
        height: 20.h,
      );
    },
  );
}
