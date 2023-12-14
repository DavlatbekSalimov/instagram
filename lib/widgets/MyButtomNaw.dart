import 'package:flutter/material.dart';
import 'package:instagram/pages/homePage/homePaage.dart';
import 'package:instagram/pages/myProfilePage/myProfilePage.dart';
import 'package:instagram/widgets/storyList_builser.dart';

class MyBottomNaw extends StatefulWidget {
  const MyBottomNaw({super.key});

  @override
  State<MyBottomNaw> createState() => _MyBottomNawState();
}

final List<Widget> listWidgets = [
  const HomePage(),
  const HomePage(),
  const HomePage(),
  const MyProfilePage(),
];

class _MyBottomNawState extends State<MyBottomNaw> {
  int current = 0;
  void ontapp(int index) {
    setState(() {
      this.current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listWidgets.elementAt(current),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: current,
        onTap: ontapp,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '.',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '.'),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation_outlined), label: '.'),
          BottomNavigationBarItem(icon: Storys(), label: '.'),
        ],
      ),
    );
  }
}
