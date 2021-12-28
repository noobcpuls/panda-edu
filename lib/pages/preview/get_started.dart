import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:flutter_application_3/pages/login/login_bottomsheet.dart';
import 'package:flutter_application_3/pages/login/register_main.dart';
import 'package:get/get.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 80, 0, 100),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("지금,\n판다 에듀를 시작해보세요.", style: Theme.of(context).textTheme.headline1),
            Column(
              children: <Widget>[
                ElevatedButton(
                  child: const Text("판다 에듀 계정으로 로그인하기"),
                  onPressed: () => showModalBottomSheet(
                    context: context,
                    builder: (context) => const LoginSheet(),
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20))),
                    isScrollControlled: true,
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 50),
                      elevation: 0.0,
                      primary: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text("아직 회원이 아니신가요?"),
                  onPressed: () {
                    Get.to(() => const RegisterScreen(),
                        transition: Transition.downToUp);
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 50),
                      elevation: 0.0,
                      primary: greyColor,
                      onPrimary: mainTextColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: const Text("카카오톡으로 3초만에 회원가입"),
                  onPressed: () {
                    Get.snackbar(
                      "카카오톡으로 회원가입",
                      "아직 구현되지 않은 기능입니다.",
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 50),
                      elevation: 0.0,
                      primary: const Color(0xffffea00),
                      onPrimary: mainTextColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
