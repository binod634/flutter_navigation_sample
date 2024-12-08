import 'package:flutter/material.dart';
import 'package:navigation_example/screens/Home.dart';
import 'package:navigation_example/screens/profile.dart';
import 'package:navigation_example/screens/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageNo = 0;
  List<Widget> pages = [
    const Home(),
    const Profile(),
    const Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentPageNo],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentPageNo,
            onTap: (index) {
              setState(() {
                currentPageNo = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings"),
            ]));
  }
}
