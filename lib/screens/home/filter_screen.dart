import 'package:egyptexplore/const/colors/color.dart';
import 'package:egyptexplore/screens/home/museums_screen.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:  IconButton(icon:const Icon(Icons.arrow_back_ios), onPressed: () {
          Navigator.pop(context, MaterialPageRoute(builder: (c)=>const MuseumsScreen(),),);
        },),
        centerTitle: true,
        title: const Text("Filter"),
      ),
      body:   Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const ListTile(
        titleAlignment:ListTileTitleAlignment.bottom,
              leading: Text(
                'Locations',
                style: TextStyle(fontSize: 16,),
              ),
              trailing: Icon(
                Icons.navigate_next_outlined,
                size:30,
                color: Colors.grey,
              ),
            ),
            const Divider(endIndent: 14,indent: 14,height: 3,),
            const ListTile(
              titleAlignment:ListTileTitleAlignment.bottom,
              leading: Text(
                'Families',
                style: TextStyle(fontSize: 16,),
              ),
              trailing: Icon(
                Icons.navigate_next_outlined,
                size:30,
                color: Colors.grey,
              ),
            ),
            const Divider(endIndent: 14,indent: 14,height: 3,),
            const SizedBox(height: 20,),
            Container(
              width: 330,
              height: 60,
              decoration: BoxDecoration(color: AppColor.primaryAppColor,borderRadius: BorderRadius.circular(16)),
              child: const Center(
                child: Text('save',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
