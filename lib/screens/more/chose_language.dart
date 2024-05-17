import 'package:flutter/material.dart';

import '../../const/colors/color.dart';

class ChooseLanguageScreen extends StatefulWidget {
  const ChooseLanguageScreen({super.key});

  @override
  State<ChooseLanguageScreen> createState() => _ChooseLanguageScreenState();
}

class _ChooseLanguageScreenState extends State<ChooseLanguageScreen> {
  int _value = 1;

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
                "Choose Language",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              )),
          const Divider(
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                  color: _value==1? const Color(0xffE2D3CA): const Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  Radio(
                      value: 1,
                      groupValue: _value,
                      fillColor:
                          MaterialStatePropertyAll(AppColor.primaryAppColor),
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  const Text(
                    'Arabic',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                  color: _value==2? const Color(0xffE2D3CA): const Color(0xffF4F4F4),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  Radio(
                      value: 2,
                      groupValue: _value,
                      fillColor:
                          MaterialStatePropertyAll(AppColor.primaryAppColor),
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  const Text(
                    'English',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Center(
            child: Container(
              width: 350,
              height: 65,
              decoration: BoxDecoration(
                  color: AppColor.primaryAppColor,
                  borderRadius: BorderRadius.circular(16)),

              child: const Center(
                  child: Text(
                    'Save',
                    style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  )),
            ),
          ),

        ],
      ),
    );
  }
}
