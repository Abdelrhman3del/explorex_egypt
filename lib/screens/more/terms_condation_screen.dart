import 'package:flutter/material.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({super.key});

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
        title: const Text('Terms & Conditions'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(child: Image.asset('assets/images/logo_home.png')),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Welcome to our App.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'By accessing or using our application, you agree to be bound by the following terms and conditions:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'All content on our application, including but not limited to text, graphics, logos, images, and software, is the property of our company or its content suppliers and is protected by copyright, trademark, and other intellectual property laws. You may not use our content without our express written permission.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'You may use our application for lawful purposes only. You may not use our application to transmit or post any material that is illegal, offensive, or infringes on the rights of others. You may not use ou',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
