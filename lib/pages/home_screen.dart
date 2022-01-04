import 'package:flutter/material.dart';
import 'package:flutter_application_3/builder/get_x_controller.dart';
import 'package:flutter_application_3/pages/home/grades.dart';
import 'package:flutter_application_3/pages/home/home.dart';
import 'package:flutter_application_3/pages/home/test.dart';
import 'package:flutter_application_3/pages/home/videos.dart';
import 'package:flutter_application_3/pages/home/whole_list.dart';
import 'package:flutter_application_3/widgets/home_appbar.dart';
import 'package:flutter_application_3/widgets/home_bottom_navbar.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final controller = Get.put(BuilderController());
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      appBar: const HomeAppbar(),
      body: GetBuilder<BuilderController>(
        builder: (_) {
          return _widgetPages[_.selectedItem];
        },
      ),
      bottomNavigationBar: const HomeBottomNavBar(),
    );
  }
}

List<Widget> _widgetPages = [
  const Home(),
  const Videos(title: "Videos"),
  const Test(title: "TESt"),
  const Grades(title: "Grades"),
  const WholeList(title: "wholeList"),
];