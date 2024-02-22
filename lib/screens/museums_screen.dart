import 'package:egyptexplore/widgets/item_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/colors/color.dart';

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
        title: const Text("Historical Places"),
        leading: Icon(
          Icons.menu,
          color: AppColor.primaryAppColor,
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),

          slivers: [
             SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 270,
                height: 55,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.primaryAppColor),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      "assets/images/icon-search.png",
                      width: 30,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Search",
                      style: TextStyle(color: Colors.grey),
                    ),

                  ],
                ),
              ),
               const SizedBox(
                 width: 10,
               ),
               Container(
                 height: 60,
                 width: 60,
                 decoration: BoxDecoration(
                     color: AppColor.primaryAppColor,
                     borderRadius: BorderRadius.circular(16)),
                 child: Center(
                   child: Image.asset(
                     "assets/images/icon_filter.png",
                     width: 25,
                   ),
                 ),
               )],
          ),
        ),
             SliverToBoxAdapter(child: listItem(),)
      ]),
    );

    /*    SingleChildScrollView(
        child:
    Column(
          children: [
            const SizedBox(
              height: 20,
            ),


                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: ListView.separated(
              
                padding: const EdgeInsets.symmetric(horizontal: 16),
                shrinkWrap: true,
                itemCount: 11,
                itemBuilder: (context, i) {
                  return ListIem();
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 19,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );*/
  }
}
