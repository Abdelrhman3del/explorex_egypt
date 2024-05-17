import 'package:egyptexplore/screens/home/museums_screen.dart';
import 'package:egyptexplore/screens/more/about_us_sreen.dart';
import 'package:egyptexplore/screens/more/chose_language.dart';
import 'package:egyptexplore/screens/more/contact_us_screen.dart';
import 'package:egyptexplore/screens/more/favorite_list_screen.dart';
import 'package:egyptexplore/screens/more/logout_screen.dart';
import 'package:egyptexplore/screens/more/notifacation_screen.dart';
import 'package:egyptexplore/screens/more/profile_screen.dart';
import 'package:egyptexplore/screens/more/terms_condation_screen.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 0.0, top: 10),
                child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MuseumsScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_back_ios_sharp))),
            Center(
              child: SizedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfileScreen(),
                      ),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 40.0, horizontal: 20),
                        child: Image.asset(
                            "assets/images/back_ground_profile.png"),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Image.asset(
                              "assets/images/profiel_image.png",
                              width: 90,
                            ),
                          ),
                          const Text(
                            'Abdelrahman',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                           Text(
                           S.of(context).ViewProfile,
                            style: const TextStyle(color: Color(0xffDEDEDE)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
              thickness: 0.4,
            ),
            ListTile(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MuseumsScreen()));
              },
              leading: Image.asset(
                'assets/images/icons/icon_menu.png',
                width: 30,
              ),
              trailing: const Icon(
                Icons.navigate_next,
                size: 40,
                color: Colors.grey,
              ),
              title:  Text(
              S.of(context).Home,
                style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w400),
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
              thickness: 0.4,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (c) => const NotificationScreen()));
              },
              leading: Image.asset(
                'assets/images/icons/notfiction.png',
                width: 30,
              ),
              trailing: const Icon(
                Icons.navigate_next,
                size: 40,
                color: Colors.grey,
              ),
              title:  Text(
               S.of(context).Notification,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
              thickness: 0.4,
            ),
            ListTile(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (c) => const ChooseLanguageScreen(),
                );
              },
              leading: Image.asset(
                'assets/images/icons/icon_language.png',
                width: 30,
              ),
              trailing: const Icon(
                Icons.navigate_next,
                size: 40,
                color: Colors.grey,
              ),
              title:  Text(
               S.of(context).Language,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
              thickness: 0.4,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => const ContactUsScreen(),
                  ),
                );
              },
              leading: Image.asset(
                'assets/images/icons/contact_icon.png',
                width: 30,
              ),
              trailing: const Icon(
                Icons.navigate_next,
                size: 40,
                color: Colors.grey,
              ),
              title:  Text(
                S.of(context).ContactUs,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
              thickness: 0.4,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutUs()));
              },
              leading: Image.asset(
                'assets/images/icons/aboutUs_icon.png',
                width: 30,
              ),
              trailing: const Icon(
                Icons.navigate_next,
                size: 40,
                color: Colors.grey,
              ),
              title:  Text(
              S.of(context).AboutUs,
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
              thickness: 0.4,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (c) => const FavoriteListScreen()));
              },
              leading: Image.asset(
                'assets/images/icons/favorite_icon.png',
                width: 30,
              ),
              trailing: const Icon(
                Icons.navigate_next,
                size: 40,
                color: Colors.grey,
              ),
              title:  Text(
                S.of(context).List,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
              thickness: 0.3,
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TermsConditionScreen()));
              },
              leading: Image.asset(
                'assets/images/icons/terms_icon.png',
                width: 30,
              ),
              trailing: const Icon(
                Icons.navigate_next,
                size: 40,
                color: Colors.grey,
              ),
              title:  Text(
                S.of(context).TermsConditions,
                style:const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
              thickness: 0.4,
            ),
            ListTile(
              onTap: () {
                showModalBottomSheet(
                    context: context, builder: (c) => const LogOutScreen());
              },
              leading: Image.asset(
                color: Colors.red,
                'assets/images/icons/logout_icon.png',
                width: 30,
              ),
              trailing: const Icon(
                Icons.navigate_next,
                size: 40,
                color: Colors.grey,
              ),
              title:  Text(
               S.of(context).Logout,
                style: const TextStyle(
                  fontSize: 19,
                  color: Colors.red,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Divider(
              indent: 20,
              endIndent: 20,
              color: Colors.grey,
              thickness: 0.4,
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
