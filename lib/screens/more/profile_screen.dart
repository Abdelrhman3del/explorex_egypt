import 'package:egyptexplore/screens/more/changee_password.dart';
import 'package:egyptexplore/screens/more/edit_screen.dart';
import 'package:egyptexplore/screens/more/remove_account_screen.dart';
import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F4F4),
      appBar: AppBar(
        backgroundColor: const Color(0xffF4F4F4),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(S.of(context).Profile),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0.0, vertical: 12),
                  child: Image.asset("assets/images/profiel_image.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 37.0),
                  child: Image.asset(
                    'assets/images/icons/camera_icon.png',
                    width: 40,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Icons.person_outline_outlined,
                size: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      textAlign: TextAlign.end,
                      S.of(context).PersonalInformation,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    S.of(context).Name,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const Text('Abdelrhman Adel'),
                  const SizedBox(
                    width: 220,
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.1,
                      height: 10,
                    ),
                  ),
                  Text(
                    S.of(context).PhoneNumber,
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Text(
                    '0101280055613',
                  ),
                  const SizedBox(
                    width: 220,
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.1,
                      height: 10,
                    ),
                  ),
                  Text(
                    S.of(context).EmailAddress,
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Text("abdelrhmanadelabdslam@gmail.com"),
                  const SizedBox(
                    width: 220,
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.1,
                      height: 10,
                    ),
                  ),
                  Text(
                    'Country',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text('Egypt'),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditPersonal(),
                    ),
                  );
                },
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 8),
                    child: Image.asset(
                      'assets/images/icons/edit_icon.png',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            height: 1,
            thickness: 0.3,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (c) => const ChangePassword()),
              );
            },
            leading: Image.asset(
              "assets/images/icons/password_icon.png",
              width: 30,
            ),
            title: Text(
              S.of(context).ChangePassword,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(
            thickness: 0.3,
            height: 1,
          ),
          ListTile(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (c) {
                    return const RemoveAccountScreen();
                  },
                  enableDrag: true);
            },
            leading: Image.asset(
              "assets/images/icons/trach.png",
              width: 30,
            ),
            title: Text(
              S.of(context).RemoveAccount,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Color(0xff9A1626)),
            ),
            trailing: const Icon(Icons.navigate_next_outlined),
          ),
          const Divider(
            thickness: 0.3,
            height: 1,
          ),
        ],
      ),
    );
  }
}
