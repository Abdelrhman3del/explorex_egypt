import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:panorama_viewer/panorama_viewer.dart';

class Panorama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PanoramaViewer(
          child: Image.network(
              'https://mpembed.com/show/?m=GLcinPBnEet&mpu=497')),
    );
  }
}
