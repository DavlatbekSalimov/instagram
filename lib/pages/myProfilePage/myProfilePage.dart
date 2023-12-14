import 'package:flutter/material.dart';
import 'package:instagram/pages/anotherProfilePage/anotherProfile.dart';
import 'package:instagram/widgets/Mytapbar.dart';
import 'package:instagram/widgets/anotherinfo.dart';
import 'package:instagram/widgets/storyList_builser.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              'Hasan',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Container(
              height: 20,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              child: const Center(
                child: Text(
                  '10+',
                  style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
        actions: [
          const Icon(Icons.add_box_outlined),
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.020,
          ),
          const Icon(Icons.menu),
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.020,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AnotherInfo(
              post: '116',
              followers: '1,109',
              following: '300',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: const MyElevationButton(
                      text: 'Edit profile',
                      color: Color(0xFFEFEFEF),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color(0xFFEFEFEF)),
                    child: const Icon(
                      Icons.person_add,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Story(),
            MyTapbar(),
            MyPost(),
          ],
        ),
      ),
    );
  }
}
