import 'package:flutter/material.dart';

import '../../const/colors/color.dart';

class RemoveAccountScreen extends StatelessWidget {
  const RemoveAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(14), topRight: Radius.circular(14)),
          color: Colors.white),
      width: double.infinity,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.grey),
              width: 70,
              height: 5,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
              padding: const EdgeInsets.only(left: 32),
              width: 250,
              child: const Text(
                "Are you sure you want to remove your account ?",
                style: TextStyle(fontWeight: FontWeight.w500),
              )),
          const Divider(
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(height: 30,),
          Center(
            child: Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                  color: AppColor.primaryAppColor,
                  borderRadius: BorderRadius.circular(16)),

              child: const Center(
                  child: Text(
                    'Remove',
                    style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                  color: const Color(0xffE2D3CA),
                  borderRadius: BorderRadius.circular(16)),

              child:  Center(
                  child: Text(
                    'Remove',
                    style:
                    TextStyle(color:AppColor.primaryAppColor, fontWeight: FontWeight.bold),
                  )),
            ),
          ),

        ],
      ),
    );
  }
}
