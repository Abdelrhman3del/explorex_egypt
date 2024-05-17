import 'dart:ffi';

import 'package:country_picker/country_picker.dart';
import 'package:egyptexplore/const/colors/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EditPersonal extends StatefulWidget {
  const EditPersonal({super.key});

  @override
  State<EditPersonal> createState() => _EditPersonalState();
}

class _EditPersonalState extends State<EditPersonal> {
  Country? country;

  @override
  Widget build(BuildContext context) {
    void showPicker() {
      showCountryPicker(
        context: context,
        favorite: ['IN', 'US', 'CA'],
        exclude: ['CN'],
        countryListTheme: CountryListThemeData(
          bottomSheetHeight: 600,
          backgroundColor: Colors.purple.shade50,
          borderRadius: BorderRadius.circular(20),
          inputDecoration: const InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.purple),
            hintText: 'Search your country here..',
            border: InputBorder.none,
          ),
        ),
        onSelect: (c) {
          setState(() {
            country = c;
          });
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:  IconButton( onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios),),
        title: const Text('Edit Personal information'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            buildTextFormFiled(
              obs: false,
              label: 'Name',
              hint: 'Enter your name',
              textInputType: TextInputType.name,
              Function: () {},
              country: '', suffixIcon: Text(''),
            ),
            const SizedBox(
              height: 10,
            ),
            buildTextFormFiled(
              obs: false,
                label: 'Phone Number',
                hint: 'Enter your phone number',
                textInputType: TextInputType.number,
                Function: () {},
                country: '', suffixIcon: Text('')),
            const SizedBox(
              height: 10,
            ),
            buildTextFormFiled(
              obs: false,
              label: 'Email',
              hint: 'Enter your email ',
              textInputType: TextInputType.emailAddress,
              Function: () {},
              country: '', suffixIcon: Text(''),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              onTap: () {
                showPicker();
              },
              obscureText: false,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(16)),
                enabled: true,
                hintText: country?.name ?? 'select Country',
                labelStyle: TextStyle(color: AppColor.primaryAppColor),
                labelText: country?.name ?? ' Country',
                suffixIcon: const Icon(Icons.arrow_drop_down),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(color: Colors.grey)),
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

Widget buildTextFormFiled({
  required void Function() Function,
  required String label,
  required String hint,
  required String country,
  required Widget suffixIcon,
  required TextInputType textInputType,
  required bool obs,
}) {
  return TextFormField(
    onTap: Function,
    obscureText: obs,
    initialValue: country,
    keyboardType: textInputType,
    decoration: InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(16)),
      enabled: true,

      hintText: hint,
      suffixIcon:suffixIcon ,
      labelStyle: TextStyle(color: AppColor.primaryAppColor),
      labelText: label,
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: Colors.grey)),
    ),
  );
}
