// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram/widgets/storyList_builser.dart';

class AnotherInfo extends StatelessWidget {
  final String? name;
  final String? post;
  final String? followers;
  final String? following;
  final String? info;

  const AnotherInfo({
    super.key,
    this.name,
    this.post,
    this.followers,
    this.following,
    this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Storys(
                radius: 50,
                imageSize: 88,
                cricleradius: 50,
              ),
            ),
            AnotherFolloetext(
              title: post ?? '1,500',
              subtitle: 'Post',
            ),
            AnotherFolloetext(
              title: followers ?? '5,875',
              subtitle: 'Followers',
            ),
            AnotherFolloetext(
              title: following ?? '8,090',
              subtitle: 'Following',
            ),
            SizedBox(
              width: 2,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name ?? 'Xasanmurod',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              Text(
                '• Flutter Developer, Mobile Developer',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                info ??
                    '''Science, Technology & Engineering
    🧑‍💻 Software Engineer
    🧠 Creator
    🟢 Available for Freelance Opportunities
    🚀 Sharing My Coding Journey
    🌏 Exploring Tech Together
    ''',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              Stack(
                children: [
                  Align(
                    alignment: Alignment(-0.78, 0),
                    child: Storys(),
                  ),
                  Align(
                    alignment: Alignment(-0.90, 0),
                    child: Storys(),
                  ),
                  Align(
                    alignment: Alignment(-0.99, 0),
                    child: Storys(),
                  ),
                  Align(
                    alignment: Alignment(-0.1, 0),
                    child: Text(
                      'Follow by Nord, john, Shazl \n and 100 other,',
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class MyElevationButton extends StatelessWidget {
  final String? text;
  final Color? color;
  final Widget? child;
  const MyElevationButton({
    this.text,
    this.child,
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        foregroundColor: Colors.black,
        backgroundColor: color ?? Color(0xFF1FA1FF),
      ),
      onPressed: () {},
      child: child ??
          Text(
            text ?? 'Follow',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
    );
  }
}

class AnotherFolloetext extends StatelessWidget {
  final String title;
  final String subtitle;
  const AnotherFolloetext({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
        ),
        Text(subtitle, style: TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}
