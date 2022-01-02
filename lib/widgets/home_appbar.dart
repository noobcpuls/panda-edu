import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return AppBar(
      title: Row(
        children: <Widget>[
          Image.asset('assets/images/판다_로고(136x35).png'),
        ],
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      actions: <IconButton>[
        IconButton(onPressed: null, icon: SvgPicture.asset('assets/icons/regular/bx-bell.svg')),
        IconButton(onPressed: null, icon: SvgPicture.asset('assets/icons/solid/bxs-brightness.svg'))
      ],
    );
  }
}
