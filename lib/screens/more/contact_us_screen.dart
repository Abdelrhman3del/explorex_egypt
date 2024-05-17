import 'dart:ui';

import 'package:egyptexplore/const/colors/color.dart';
import 'package:egyptexplore/screens/more/edit_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: const Text("Contact Us"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/icons/call_icon.png',
                    width: 30,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Technical support team',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Email Address',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Exploregypt@gmail.com',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(width: 250, child: Divider()),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Phone Number',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("01012805613"),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              buildTextFormFiled(
                  Function: () {},
                  label: 'Full Name ',
                  hint: 'Enter full name',
                  country: '',
                  suffixIcon: const Text(''),
                  textInputType: TextInputType.text,
                  obs: false),
              const SizedBox(
                height: 10,
              ),
              buildTextFormFiled(
                  Function: () {},
                  label: 'Email',
                  hint: 'Enter your email',
                  country: '',
                  suffixIcon: const Text(''),
                  textInputType: TextInputType.emailAddress,
                  obs: false),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Message',
                style: TextStyle(color: AppColor.primaryAppColor),
              ),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'enter your message',
                  labelStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(
                    color: AppColor.primaryAppColor,
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Send',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 18),
                    ),
                    Image.asset(
                      'assets/images/icons/send-icon.png',
                      width: 20,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: Image.asset('assets/images/icons/fae_icon.png').image,
                    
                  ),
                  const SizedBox(width: 5,),

                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 18,
                    backgroundImage: Image.asset('assets/images/icons/whats_icon.png'
                    ,).image,

                  ),
                  const SizedBox(width: 5,),

                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(image: DecorationImage(image: Image.asset('assets/images/icons/insta_ion.png',).image)
                        ,gradient: const LinearGradient(colors: [

                      Color(0xffFF8347),
                      Color(0xffFF5A40),
                      Color(0xffB83DAF),
                      Color(0xffE44675),
                    ]),borderRadius: BorderRadius.circular(18)),

                  ),
                  const SizedBox(width: 5,),
                  CircleAvatar(
                    radius: 18,
                    backgroundImage: Image.asset('assets/images/icons/linked_ion.png').image,

                  ),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
