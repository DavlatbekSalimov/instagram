// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram/widgets/Mytapbar.dart';
import 'package:instagram/widgets/anotherinfo.dart';
import 'package:instagram/widgets/storyList_builser.dart';

class AnotherProfile extends StatefulWidget {
  const AnotherProfile({super.key});

  @override
  State<AnotherProfile> createState() => _AnotherProfileState();
}

class _AnotherProfileState extends State<AnotherProfile> {
  @override
  Widget build(BuildContext context) {
    Color color = Color(0xFFEFEFEF);
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Xasanmurod',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height * 0.01,
            ),
            SvgPicture.asset('assets/icons/galichka.svg')
          ],
        ),
        actions: [
          Icon(Icons.notifications),
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.020,
          ),
          Icon(Icons.more_horiz_rounded),
          SizedBox(
            width: MediaQuery.of(context).size.height * 0.020,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AnotherInfo(),
            SizedBox(
              width: double.infinity,
              child: MyElevationButton(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 110,
                    child: MyElevationButton(
                      color: color,
                      text: 'Message',
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: MyElevationButton(
                      color: color,
                      text: 'Message',
                    ),
                  ),
                  SizedBox(
                    width: 110,
                    child: MyElevationButton(
                      color: color,
                      text: 'Message',
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9), color: color),
                    child: Icon(Icons.person_add),
                  )
                ],
              ),
            ),
            Story(
              listtext: listtext[Random().nextInt(3)],
            ),
            MyTapbar(),
            MyPost()
          ],
        ),
      ),
    );
  }

  List<String> listtext = ['Home', 'Trawel', 'Activity', 'School', 'Work'];
}

class MyPost extends StatelessWidget {
  const MyPost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.75,
      child: GridView.builder(
          padding: EdgeInsets.all(2),
          scrollDirection: Axis.vertical,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext contex, int index) {
            return Padding(
              padding: const EdgeInsets.all(2),
              child: Image.network(
                'http://source.unsplash.com/random/$index',
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}
