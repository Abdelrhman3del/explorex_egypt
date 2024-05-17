import 'package:egyptexplore/const/colors/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassword1 extends StatelessWidget {
  const ResetPassword1({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14), topRight: Radius.circular(14)),
            color: Colors.white),
        width: double.infinity,
        height: 900,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            height: 14.h,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16), color: Colors.grey),
              width: 40.w,
              height: 5.h,
            ),
          ),
          Text(
            'Forget Password!',
            style: TextStyle(color: AppColor.primaryAppColor, fontSize: 32.sp),
          ),
          SizedBox(
              width: 300.w,
              child: const Text(
                'Enter email/phone number to Send the   confirmation code ',
                maxLines: 2,
                style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16,),
              )),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TextFormField(

                                          obscureText: false,
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(16)),
                                            enabled: true,
                                            hintText: 'Enter email or Phone number',
                                            labelStyle: TextStyle(color: AppColor.primaryAppColor),
                                            labelText: 'Email/PhoneNumber',
                                            enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(color: Colors.grey)),
                                          ),
                                        ),
                      ),
          SizedBox(height: 30.h ,),
                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                                      width: 340.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                          color: AppColor.primaryAppColor,
                                          borderRadius: BorderRadius.circular(16)),
                                      child: const Center(
                                          child: Text(
                                        'send code',
                                        style:
                                            TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16),
                                      )),
                                    ),
                      ),
            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: [
                  Container(
                    width: 150.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                      'Resend the link( 02:00 )',
                      style:
                          TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                  ),
                ],
              ),
            )


        ]),
      ),
    );
    ;
  }
}
