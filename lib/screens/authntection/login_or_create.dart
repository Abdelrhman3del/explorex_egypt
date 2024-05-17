import 'package:egyptexplore/const/colors/color.dart';
import 'package:egyptexplore/screens/authntection/login_screen.dart';
import 'package:egyptexplore/screens/authntection/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginOrCreate extends StatelessWidget {
  const LoginOrCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Container(
                child: Image.asset("assets/images/logo_home.png",width:159 ,height: 214,),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Log in or Create",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: AppColor.primaryAppColor),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: AppColor.primaryAppColor),
                ),
              ],
            ),
             SizedBox(height: 30.h,),
            Column(
              children: [
                InkWell(onTap: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder)=> LoginScreen()));},
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(
                          color: AppColor.primaryAppColor
                      ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15,)),
                    width: 320.w,
                    height: 55.h,
                    alignment: Alignment.center,
                    child: const Text("Log In",style: TextStyle(color: Colors.black,fontFamily: "Outfit")),
                  ),
                ),
                 SizedBox(height: 20.h,),
                InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (builder)=>RegisterDoc()));},
                  child: Container(
                    decoration: BoxDecoration(border: Border.all(
                      color: AppColor.primaryAppColor
                    ),
                        color:AppColor.primaryAppColor,
                        borderRadius: BorderRadius.circular(15)),
                    width: 320.w,
                    height: 55.h,
                    alignment: Alignment.center,
                    child: const Text("Create account",style: TextStyle(color:  Colors.white,fontFamily: "Outfit")),
                  ),
                ),

              ],
            ),])));

  }
}
