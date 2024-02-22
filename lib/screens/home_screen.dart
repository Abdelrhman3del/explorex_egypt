import 'package:egyptexplore/const/colors/color.dart';
import 'package:egyptexplore/screens/museums_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

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
            const Padding(
              padding: EdgeInsets.only(left:30 ,top: 50),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.menu_outlined,color: Color(0xFF9E6D4D),),
              ),
            ),
            const SizedBox(height: 50,),
            Center(child: Image.asset('assets/images/logo_home.png' ),),
            const SizedBox(height: 100,),
            GestureDetector(
              child: Center(
                child: Container(
                  width: 300,
                  height: 100,

                  decoration:   BoxDecoration(
                    border: Border.all(color: const Color(0xff9E6D4D),width: 1.8),
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Image.asset("assets/images/scan_icon.png",width: 25,),

                      const SizedBox(height: 5,),
                       Text('Scan',style: TextStyle(color: AppColor.primaryAppColor,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (c)=>const MuseumsScreen() ));
              },
              child: Center(
                child: Container(
                  width: 300,
                  height: 100,

                  decoration:   BoxDecoration(
                    border: Border.all(color: const Color(0xff9E6D4D),width: 1.8),
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.white
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                     Image.asset("assets/images/home_icon.png",width: 25,),
                      const SizedBox(height: 5,),

                       Text('Journey From Home',style: TextStyle(color: AppColor.primaryAppColor,fontWeight: FontWeight.bold),)
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
