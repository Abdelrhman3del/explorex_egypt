import 'package:egyptexplore/screens/more/edit_screen.dart';
import 'package:flutter/material.dart';

import '../../const/colors/color.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Change Password'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            buildTextFormFiled(
                obs: true,
                Function: () {},
                label: 'Current password ',
                hint: 'Enter your current password',
                country: '',
                suffixIcon: const Icon(Icons.visibility_off_outlined),
                textInputType: TextInputType.visiblePassword),
            const SizedBox(
              height: 10,
            ),
            buildTextFormFiled(
                Function: () {},
                label: 'New password ',
                hint: 'Enter your new password',
                country: 'country',
                suffixIcon: const Icon(Icons.visibility_off_outlined),
                textInputType: TextInputType.visiblePassword,
                obs: true),
            const SizedBox(
              height: 10,
            ),
            buildTextFormFiled(
                Function: () {},
                label: 'Confirm new password ',
                hint: 'Confirm password',
                country: '',
                suffixIcon: const Icon(Icons.visibility_off_outlined),
                textInputType: TextInputType.visiblePassword,
                obs: true),
            const SizedBox(height: 20,),
            Container(
              width: 350,
              height: 70,
              decoration: BoxDecoration(
                  color: AppColor.primaryAppColor,
                  borderRadius: BorderRadius.circular(16)),
              child: const Center(
                  child: Text(
                    'Save',
                    style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  )),
            )


          ],
        ),
      ),
    );
  }
}
