import 'package:egyptexplore/const/Text.dart';
import 'package:egyptexplore/generated/l10n.dart';
import 'package:egyptexplore/screens/home/filter_screen.dart';
import 'package:egyptexplore/screens/more/menu_screen.dart';
import 'package:egyptexplore/screens/home/search_Screen.dart';
import 'package:egyptexplore/widgets/item_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../const/colors/color.dart';

class MuseumsScreen extends StatelessWidget {
  const MuseumsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        title: Text(
          S.of(context).AppBarMuseumScreen,
          style: TextStyle(
            fontVariations: const [
              FontVariation('wght', 400),
            ],
            fontSize: 22.sp,
            fontFamily: TextAPP().nameFont,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: AppColor.primaryAppColor,
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (c) => const MenuScreen()));
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 13.w),
        child:
            CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 260.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColor.primaryAppColor),
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 30.w,
                        ),
                        Image.asset(
                          "assets/images/icons/icon-search.png",
                          width: 24.w,
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          S.of(context).searchBar,
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: TextAPP().nameFont,
                              fontVariations: const [FontVariation('wght', 400)]),
                        ),
                      ],
                    ),
                  ),
                ),
                 SizedBox(
                  width: 8.w,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FilterScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 52.h,
                    width: 55.w,
                    decoration: BoxDecoration(
                        color: AppColor.primaryAppColor,
                        borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: Image.asset(
                        "assets/images/icons/icon_filter.png",
                        width: 24.w,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
           SliverToBoxAdapter(
            child: SizedBox(
              height: 10.h,
            ),
          ),
          SliverToBoxAdapter(
            child: listItem(context),
          )
        ]),
      ),
    );
  }
}
