import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

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
        title: const Text('About Us'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(child: Image.asset('assets/images/logo_home.png')),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'We are a company dedicated to providing high-quality products and excellent customer service',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'At our company, we believe that customer service is just as important as the quality of our products. We strive to provide excellent customer service to all of our customers. Our customer service team is available [insert hours of availability] to assist you with any questions or concerns you may have.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),

            ),
            SizedBox(height: 20,),
            const Text(
              'We believe in giving back to the community. We are proud to support [insert community organizations or causes]. We believe that by working together, we can make a positive impact on the world.',
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
