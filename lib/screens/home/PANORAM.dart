
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:panorama/panorama.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class Panorama extends StatelessWidget {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child: PanoramaViewer(
         child: Image.asset('assets/images/icons/timothy-oldfield-luufnHoChRU-unsplash.jpg'),
       ),
        

      ),
    );
  }}