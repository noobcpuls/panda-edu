import 'package:flutter/material.dart';
import 'package:flutter_application_3/builder/get_x_controller.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeBottomNavBar extends StatefulWidget {
  const HomeBottomNavBar({Key? key}) : super(key: key);

  @override
  _HomeBottomNavBarState createState() => _HomeBottomNavBarState();
}

class _HomeBottomNavBarState extends State<HomeBottomNavBar> {
  int _selectedIndex = 0;
  final controller = Get.put(BuilderController());

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            controller.updateSelectedItem(_selectedIndex);
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "홈",
            icon: SvgPicture.asset("assets/icons/bxs-home.svg",
              color: Theme.of(context).colorScheme.secondaryVariant
            ),
            activeIcon:
                SvgPicture.asset("assets/icons/bxs-home.svg", color: subColor3),
          ),
          BottomNavigationBarItem(
            label: "동영상",
            icon: SvgPicture.asset(
              "assets/icons/bxs-videos.svg",
              color: Theme.of(context).colorScheme.secondaryVariant
            ),
            activeIcon: SvgPicture.asset("assets/icons/bxs-videos.svg",
                color: subColor3),
          ),
          BottomNavigationBarItem(
            label: "시험",
            icon: SvgPicture.asset(
              "assets/icons/bxs-edit.svg",
              color: Theme.of(context).colorScheme.secondaryVariant
            ),
            activeIcon:
                SvgPicture.asset("assets/icons/bxs-edit.svg", color: subColor3),
          ),
          BottomNavigationBarItem(
            label: "성적",
            icon: SvgPicture.asset(
              "assets/icons/bx-book-reader.svg",
              color: Theme.of(context).colorScheme.secondaryVariant
            ),
            activeIcon: SvgPicture.asset("assets/icons/bx-book-reader.svg",
                color: subColor3),
          ),
          BottomNavigationBarItem(
            label: "전체",
            icon: SvgPicture.asset(
              "assets/icons/bx-list-ul.svg",
              color: Theme.of(context).colorScheme.secondaryVariant
            ),
            activeIcon: SvgPicture.asset("assets/icons/bx-list-ul.svg",
                color: subColor3),
          ),
        ],
        elevation: 0,
        selectedItemColor: subColor3,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
