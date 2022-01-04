import 'package:flutter/material.dart';
import 'package:flutter_application_3/builder/get_x_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeAppbar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppbar({
    Key? key,
  }) : super(key: key);

  @override
  _HomeAppbarState createState() => _HomeAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _HomeAppbarState extends State<HomeAppbar> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BuilderController());

    return AppBar(
      title: Row(
        children: <Widget>[
          Image.asset('assets/images/판다_로고(136x35).png', color: Theme.of(context).colorScheme.secondaryVariant,),
        ],
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
      actions: <IconButton>[
        IconButton(
            onPressed: null,
            icon: SvgPicture.asset('assets/icons/bx-bell.svg', color: Theme.of(context).colorScheme.secondaryVariant,)),
        IconButton(
            onPressed: () {
              controller.changeTheme();
            },
            icon: SvgPicture.asset('assets/icons/bxs-brightness-half.svg', color: Theme.of(context).colorScheme.secondaryVariant,))
      ], //dart theme plz
    );
  }
}
