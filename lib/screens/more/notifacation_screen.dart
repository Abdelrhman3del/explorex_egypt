import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: const Text('Notification'),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            color:const Color(0xffE2D3CA) ,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset('assets/images/logo_home.png',width: 50,),
                  const SizedBox(width: 15,),
                  const SizedBox(
                    width: 300,

                      child: Text('Lorem Ipsum has been the industry \'s standard dummy',maxLines: 3,))

                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color:const Color(0xffE2D3CA) ,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset('assets/images/logo_home.png',width: 50,),
                  const SizedBox(width: 15,),
                  const SizedBox(
                    width: 300,

                      child: Text('Lorem Ipsum has been the industry \'s standard dummy',maxLines: 3,))

                ],
              ),
            ),
          ),
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset('assets/images/logo_home.png',width: 50,),
                  const SizedBox(width: 15,),
                  const SizedBox(
                    width: 300,

                      child: Text('Lorem Ipsum has been the industry \'s standard dummy',maxLines: 3,))

                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color:const Color(0xffE2D3CA) ,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset('assets/images/logo_home.png',width: 50,),
                  const SizedBox(width: 15,),
                  const SizedBox(
                    width: 300,

                      child: Text('Lorem Ipsum has been the industry \'s standard dummy',maxLines: 3,))

                ],
              ),
            ),
          ),
          Container(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset('assets/images/logo_home.png',width: 50,),
                  const SizedBox(width: 15,),
                  const SizedBox(
                    width: 300,

                      child: Text('Lorem Ipsum has been the industry \'s standard dummy',maxLines: 3,))

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
