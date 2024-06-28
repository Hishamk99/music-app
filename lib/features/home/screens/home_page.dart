import 'package:flutter/material.dart';
import 'package:music_app/features/home/widgets/custom_buttom_navigation_bar.dart';
import 'package:music_app/features/home/widgets/home_page_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int ind = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomButtomNavigationBar(
          onTap: (index) {
            setState(() {
              ind = index;
            });
          },
          index: ind,
        ),
        body: const HomePageBody(),
      ),
    );
  }
}
