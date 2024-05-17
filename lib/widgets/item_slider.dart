import 'package:flutter/cupertino.dart';

Widget itemSlider ( {required String imageSlider,required String imageIcon,required double width,BoxFit ?boxFit} ){


  return  Stack(

    alignment: Alignment.center,
    children: [
      Image.asset(imageSlider,width:350,height: 300,),
      Image.asset(
        imageIcon,
        width: width,
        fit: BoxFit.cover,
      )
    ],
  );
}