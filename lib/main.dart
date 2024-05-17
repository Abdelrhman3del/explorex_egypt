import 'package:egyptexplore/screens/home/home_screen.dart';
import 'package:egyptexplore/screens/onBoardng/onBoardingScreen.dart';
import 'package:egyptexplore/screens/prsentation_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_ , child) {

        return MaterialApp(
          locale: const Locale('en'),
          localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,


          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            fontFamily: 'Roboto Slab',
            textTheme: GoogleFonts.robotoSlabTextTheme().apply(),
            primarySwatch: Colors.blue,
          ),
          home: child,
        );
      },
      child: const OnBoardingScreen(),
    );
  }
}
