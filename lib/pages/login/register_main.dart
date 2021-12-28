import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:flutter_application_3/pages/login/register_id.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                  icon: const Icon(Icons.close_outlined, size: 30),
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
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text("학습의 모든 것\n판다에듀에서 시작하기",
                        style: Theme.of(context).textTheme.headline1),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text.rich(TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: "누적 다운로드 ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: subTextColor2),
                      ),
                      TextSpan(
                        text: "1,000만, ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: subColor3),
                      ),
                      TextSpan(
                        text: "학습 동영상 ",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: subTextColor2),
                      ),
                      TextSpan(
                        text: "70만개.",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: subColor3),
                      ),
                    ])),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const RegisterID(),
                            transition: Transition.cupertino);
                      },
                      child: Text("시작하기",
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
        ));
  }
}
