import 'dart:math';

import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String? listtext;
  const Story({
    this.listtext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> str = [
      'Karl',
      'Nilush',
      'Sakiy',
      'Narimon',
      'Jorj',
      'Mishshel'
    ];

    return SizedBox(
      height: 120,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext contex, int index) {
            return Padding(
              padding: const EdgeInsets.all(9),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/story.png'),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        'http://source.unsplash.com/random/$index',
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    listtext ?? str[index],
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class Storys extends StatelessWidget {
  final void Function()? onTap;
  final double? cricleradius;
  final double? radius;
  final double? imageSize;
  const Storys({
    this.onTap,
    this.cricleradius,
    this.imageSize,
    this.radius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: GestureDetector(
        onTap: onTap,
        child: CircleAvatar(
          radius: radius ?? 20,
          backgroundImage: AssetImage('assets/images/story.png'),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(cricleradius ?? 30),
            child: Image.network(
              'http://source.unsplash.com/random/${Random().nextInt(100)}',
              height: imageSize ?? 35,
              width: imageSize ?? 35,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

// 