import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  final String title;
  final String description;
  final String image;

  const WelcomePage(
      {Key? key, this.title = '', this.description = '', this.image = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 80),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              image,
              width: size.width * .75,
            ),
            SizedBox(
              height: size.height * .06,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 36),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: size.height * .06,
            ),
            Text(
              description,
              style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
