import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:flutter_application_3/widgets/home_appbar.dart';
import 'package:flutter_application_3/widgets/home_bottom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: greyColor,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      appBar: const HomeAppbar(),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: size.height * .3,
            width: size.width,
            child: Column(children: <Widget>[
              Text(
                "오늘의 학습 목표"
              )
            ],),
          ),
        ],
      ),
      bottomNavigationBar: const HomeBottomNavBar(),
    );
  }
}
