import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:flutter_application_3/pages/home_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterFinished extends StatelessWidget {
  const RegisterFinished({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Stack(children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(height: 20),
                ),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.close_sharp, size: 30),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                const SizedBox(height: 20, width: 10),
              ],
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "회원가입이\n완료되었어요!",
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          ?.copyWith(fontSize: 32),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: SvgPicture.asset(
                      "assets/images/undraw_order_confirmed_re_g0if.svg",
                      width: size.width * .25,
                      height: size.height * .25
                    ),
                  ),
                  Expanded(child: Container()),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const HomeScreen(),
                            transition: Transition.cupertino);
                      },
                      child: Text("다음",
                          style: Theme.of(context).textTheme.button?.copyWith(
                                color: Colors.white,
                              )),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(size.width - 60, 50),
                          elevation: 0.0,
                          primary: mainColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ]),
          ]),
        ));
  }
}
