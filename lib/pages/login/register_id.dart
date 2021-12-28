import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:flutter_application_3/pages/login/register_password.dart';
import 'package:flutter_application_3/pages/preview_screen.dart';
import 'package:get/get.dart';

class RegisterID extends StatelessWidget {
  const RegisterID({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text("이름을 알려주세요.",
                        style: Theme.of(context).textTheme.headline1),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text("이메일",
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            ?.copyWith(color: subTextColor2, fontSize: 14)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: mainColor, width: 3)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: greyColor, width: 3))),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text("닉네임",
                        style: Theme.of(context)
                            .textTheme
                            .caption
                            ?.copyWith(color: subTextColor2, fontSize: 14)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: mainColor, width: 3)),
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: greyColor, width: 3))),
                    ),
                  ),
                  Expanded(child: Container()),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const RegisterPassword(),
                            transition: Transition.cupertino);
                      },
                      child: Text("다음",
                          style: Theme.of(context).textTheme.button?.copyWith(
                                color: Colors.white,
                              )),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(size - 60, 50),
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
        )
    );
  }
}
