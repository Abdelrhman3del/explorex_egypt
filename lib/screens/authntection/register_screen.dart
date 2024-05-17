import 'package:country_picker/country_picker.dart';
import 'package:egyptexplore/const/colors/color.dart';
import 'package:egyptexplore/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit/auth_cubit.dart';

import 'login_screen.dart';

class RegisterDoc extends StatefulWidget {
  RegisterDoc({Key? key}) : super(key: key);

  @override
  State<RegisterDoc> createState() => _RegisterDocState();
}

class _RegisterDocState extends State<RegisterDoc> {
  List list = ['mael', 'femeal'];
 String ? valueChose;
  Country? country;
  bool rememberMe = false;

  final emailController = TextEditingController();

  final phoneController = TextEditingController();

  final nameController = TextEditingController();

  final passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
      appBar: AppBar(
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (c) => LoginScreen(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset("assets/images/logo_home.png",
                    width: 118.w, height: 140.h),
                SizedBox(
                  height: 20.h,
                ),
                const Text(
                  "Welcome on explorex egypt board!",
                  style: TextStyle(fontSize: 15, fontFamily: "Outfit"),
                ),
                SizedBox(height: 15.h),
                _textfieldItem(
                    controller: nameController,
                    hintText: "Enter your first name",
                    lable: 'Name*',
                    icon: Icon(Icons.abc)),
                SizedBox(height: 15.h),
                _textfieldItem(
                    controller: emailController,
                    hintText: "Enter your email",
                    lable: 'Email*',
                    icon: Icon(Icons.email_outlined)),
                SizedBox(height: 15.h),
                _textfieldItem(
                    controller: phoneController,
                    hintText: "Enter your phone number",
                    lable: 'Phone Number *',
                    icon: Icon(Icons.phone_android)),
                SizedBox(height: 15.h),
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
                SizedBox(height: 15.h),
                _textfieldItem(
                    isSecure: true,
                    controller: passwordController,
                    hintText: "Enter your  age",
                    lable: 'Age *',
                    icon: const Icon(Icons.child_care)),
                SizedBox(height: 15.h),
                Container(
                    padding: EdgeInsets.all(11),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: DropdownButton(
                      hint:Text('gender',style: TextStyle(color: AppColor.primaryAppColor),),
                      isExpanded: true
                      

                      ,
                      icon: Icon(Icons.arrow_drop_down_sharp),

                      items: list.map((valueItem) {
                        return DropdownMenuItem(


                          value: valueItem,
                          child: Text(
                        valueItem,
                            style: TextStyle(color: AppColor.primaryAppColor),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          valueChose = value!.toString();
                        });
                      },
                      value: valueChose,
                    )),
                  SizedBox(height: 15.h),
                _textfieldItem(
                    isSecure: true,
                    controller: passwordController,
                    hintText: "Enter your password",
                    lable: 'Password *',
                    icon: Icon(Icons.password)),
                SizedBox(height: 15.h),
                _textfieldItem(
                  isSecure: true,
                  controller: passwordController,
                  hintText: "Confirm Password *",
                  lable: 'Confirm Password *',
                  icon: const Icon(Icons.password),
                ),
                SizedBox(height: 15.h),
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.white,
                      hoverColor: Colors.white,

                      fillColor:MaterialStatePropertyAll(AppColor.primaryAppColor),
                      value: rememberMe,
                      onChanged: (bool? value) {
                        setState(() {
                          rememberMe = value!;
                        });
                      },
                    ),
                    Text(
                      'I agree to Coursafer Privacy Policy & Terms.',
                      style: TextStyle(
                          fontSize: 14, color: AppColor.primaryAppColor),
                    ),
                  ],
                ),
                Container(
                  width: 362, // Set the width of the container
                  child: MaterialButton(
                    elevation: 0,
                    height: 60,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: AppColor.primaryAppColor,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<AuthCubit>(context).register(
                          email: emailController.text,
                          name: nameController.text,
                          phone: phoneController.text,
                          password: passwordController.text,
                        );
                      }
                    },
                    child: InkWell(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (v)=>LoginScreen()));
                      },
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.5.sp,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?",
                      style: TextStyle(fontSize: 12.sp),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (builder) => LoginScreen()));
                        },
                        child: Text(
                          " Sign in instead",
                          style: TextStyle(
                              color: AppColor.primaryAppColor, fontSize: 12),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _textfieldItem(
    {bool? isSecure,
    required TextEditingController controller,
    required String hintText,
    required String lable,
    required Icon icon}) {
  return TextFormField(
    controller: controller,
    validator: (input) {
      if (controller.text.isEmpty) {
        return "$hintText must not be empty";
      } else {
        return null;
      }
    },
    obscureText: isSecure ?? false,
    decoration: InputDecoration(
        suffixIcon: icon,
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        labelText: lable,
        labelStyle: TextStyle(color: AppColor.primaryAppColor)),
  );
}
