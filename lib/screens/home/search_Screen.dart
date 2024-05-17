import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Color(0XFFE7E7E7),
                    )),

                prefixIcon: Image.asset(
                  'assets/images/icons/search_icon.png',
                  width: 3,
                  height: 5,
                ),
                suffixIcon: const Icon(
                  Icons.cancel,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('The Grand Egyptian',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,

                    )),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Kafr nasser, Al Giza Desert, Giza Governorate 3513204 ',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
