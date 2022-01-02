import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:flutter_svg/svg.dart';

class HomeBottomNavBar extends StatefulWidget {
  const HomeBottomNavBar({Key? key}) : super(key: key);

  @override
  _HomeBottomNavBarState createState() => _HomeBottomNavBarState();
}

class _HomeBottomNavBarState extends State<HomeBottomNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
      child: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              label: "홈",
              icon: SvgPicture.asset("assets/icons/solid/bxs-home.svg"),
              activeIcon: SvgPicture.asset("assets/icons/solid/bxs-home.svg", color: mainColor,),
              ),
          BottomNavigationBarItem(
              label: "동영상",
              icon: SvgPicture.asset("assets/icons/solid/bxs-videos.svg",)
              ),
          BottomNavigationBarItem(
              label: "선생님",
              icon: SvgPicture.asset("assets/icons/regular/bx-male-female.svg",)
              ),
          BottomNavigationBarItem(
              label: "내 성적",
              icon: SvgPicture.asset("assets/icons/solid/bxs-dashboard.svg",)
              ),
          BottomNavigationBarItem(
              label: "전체",
              icon: SvgPicture.asset("assets/icons/regular/bx-list-ul.svg",)
              ),
        ],
        elevation: 0,
        unselectedItemColor: Colors.black,
        selectedItemColor: mainColor,
        type: BottomNavigationBarType.fixed,
        
      ),
    );
  }
}
