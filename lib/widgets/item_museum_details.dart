import 'package:egyptexplore/screens/home/king_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/colors/color.dart';

Widget itemMuseumDetails( context,
    {required String image,
    required String kingName,
    required String detailsKingName}) {
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (c)=>const KingDetails(),),);
    },
    child: Container(
      width: 450,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColor.primaryAppColor),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 7,
          ),
          Image.asset(
            image,
            height: 190,
            width: 110,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                kingName,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 210,
                      height: 80,
                      child: Text(
                        detailsKingName,
                        maxLines: 5,
                      )),
                ],
              ),
            ],
          )
        ],
      ),
    ),
  );
}
