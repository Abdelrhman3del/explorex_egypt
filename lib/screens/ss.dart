import 'package:flutter/material.dart';

import 'package:babylonjs_viewer/babylonjs_viewer.dart';

class PanoramaScreen extends StatefulWidget {
  const PanoramaScreen({super.key});

  @override
  State<PanoramaScreen> createState() => _EState();
}

class _EState extends State<PanoramaScreen> {


  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      appBar: AppBar(),
      body:BabylonJSViewer(src:'assets/images/icons/aaa.glb')
    );
  }
}
