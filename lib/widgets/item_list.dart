import 'package:egyptexplore/const/colors/color.dart';
import 'package:flutter/material.dart';

Widget listItem() {
  return ListView.separated(
      shrinkWrap: true,
      itemCount: 12,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (c, i) {
        return Container(
          width: 350,
          height: 220,
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.primaryAppColor),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset("assets/images/musuem_1.png"),
                  Image.asset(
                    "assets/images/icon_360.png",
                    width: 40,
                    fit: BoxFit.cover,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "The Grand Egyptian Museum",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        CircleAvatar(
                          backgroundColor: AppColor.primaryAppColor,
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_outline),
                          ),
                        )
                      ],
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Image.asset(
                          "assets/images/icon-loction.png",
                          width: 25,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                            width: 260,
                            height: 40,
                            child: Text(
                              "Kafr Nassar, Al Giza Desert, Giza Governorate 3513204",
                              overflow: TextOverflow.clip,
                              maxLines: 2,
                              style: TextStyle(color: AppColor.primaryAppColor),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }, separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 20,
        );
  },);
}
