import 'package:egyptexplore/const/colors/color.dart';
import 'package:egyptexplore/screens/authntection/login_or_create.dart';
import 'package:egyptexplore/screens/authntection/respassword_!.dart';
import 'package:egyptexplore/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubit/auth_cubit.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  bool rememberMe = false;
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
     Scaffold(
          appBar: AppBar(
            leading: InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (builder) => const LoginOrCreate()));
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: Colors.black,
                )),
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Image.asset("assets/images/logo_home.png",width:100.w,height: 214,),
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            
                   Padding(
                    padding: EdgeInsets.only(left: 15.0.w),
                    child: const Text(
                                  "Glad to see you back!",
                                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      fontFamily: "Outfit"),
                                ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: 'email',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            validator: (input) {
                              if (emailController.text.isNotEmpty) {
                                return null;
                              } else {
                                return "email must not be empty";
                              }
                            },
                          ),
                           SizedBox(
                            height: 20.h,
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'password',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
                            validator: (input) {
                              if (passwordController.text.isNotEmpty) {
                                return null;
                              } else {
                                return "password must not be empty";
                              }
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
            
                            children: <Widget>[
                              Checkbox(
            
                                fillColor:MaterialStatePropertyAll(AppColor.primaryAppColor),
                                checkColor: Colors.white,
            
            
                                value: rememberMe,
                                onChanged: (bool? value) {
                                  setState(() {
                                    rememberMe = value!;
                                  });
                                },
                              ),
                              const Text('Remember Me'),
                              SizedBox(width: 80.w,),
            
                           InkWell(
                                    onTap: () {
                                      showModalBottomSheet(

                                                  context: context,
                                                  builder: (c) => const ResetPassword1(),
                                                );
                                    },
                                    child: Text("Forget Password?",
                                        style:
                                        TextStyle(color: AppColor.primaryAppColor))),

                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                            },
                            child: MaterialButton(
                              minWidth: 362,
                              height: 55,
            
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              onPressed: () {

                                                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=>const HomeScreen()));

                              },
                              color: AppColor.primaryAppColor,
                              textColor: Colors.white,
                              child: const Text('Login'
            
                            ),
                            )),
                           SizedBox(height: 15.h),
                          Center(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Text(
                                    "New on our platform?",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (builder) =>
                                                    const HomeScreen()));
                                      },
                                      child: Text(
                                        " Create an account",
                                        style: TextStyle(
                                            color: AppColor.primaryAppColor,
                                            fontSize: 12),
                                      ))
                                ],
                              ),
                            ),
                          )
                             ],
                      ),
                    ),
                  )
                ]),
              ],
            
                ),
          )));
  }
}
