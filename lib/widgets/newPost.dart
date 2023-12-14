import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/pages/anotherProfilePage/anotherProfile.dart';
import 'package:instagram/widgets/storyList_builser.dart';

class NewPost extends StatefulWidget {
  const NewPost({super.key});

  @override
  State<NewPost> createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  bool isLike = false;
  List<String> anothername = [
    'Karl',
    'Nilush',
    'Sakiy',
    'Narimon',
    'Jorj',
    'Mishshel'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Storys(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AnotherProfile(),
                      ),
                    );
                  },
                ),
                Expanded(
                  child: Text(
                    '${anothername[Random().nextInt(6)]}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Icon(Icons.more_horiz_outlined)
              ],
            ),
          ),
          Expanded(
            child: Image.network(
              'http://source.unsplash.com/random/${Random().nextInt(100)}',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isLike = true;
                  });
                },
                icon: isLike
                    ? Icon(
                        Icons.favorite_rounded,
                        color: Colors.red,
                        size: 30,
                      )
                    : Icon(
                        Icons.favorite_outline_rounded,
                        size: 30,
                      ),
              ),
              Icon(
                CupertinoIcons.chat_bubble,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.send,
                size: 30,
              ),
              const Spacer(),
              const Icon(
                Icons.bookmark_border,
                size: 30,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              '${Random().nextInt(200)}  Likes',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Username ',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                    ),
                    Text(
                      ' Lorem ipsum dolor sit amet, consectetur  ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'adipiscing elit, sed do eiusmod tempor incididunt... ',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'more',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
