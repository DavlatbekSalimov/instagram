// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/widgets/newPost.dart';
import 'package:instagram/widgets/storyList_builser.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Instagram',
          style: GoogleFonts.lobsterTwo(
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        ),
        // SvgPicture.asset('assets/icons/logo.svg'),
        actions: const [
          Icon(
            Icons.favorite_outline_outlined,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.maps_ugc_rounded,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.add_box_outlined,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Story(),
            Divider(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView(
                children: [
                  NewPost(),
                  NewPost(),
                  NewPost(),
                  NewPost(),
                ],
              ),
            ),
            // Text('dfghj'),
          ],
        ),
      ),
      // bot
    );
  }
}
