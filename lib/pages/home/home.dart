import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
            color: Theme.of(context).colorScheme.secondary,
            height: size.height * .3,
            width: size.width,
            child: Center(
              child: Text("Home", style: Theme.of(context).textTheme.headline1),
            )),
      ],
    );
  }
}
