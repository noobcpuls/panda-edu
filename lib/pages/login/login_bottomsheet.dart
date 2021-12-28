import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:flutter_application_3/pages/home_screen.dart';
import 'package:get/get.dart';
import 'package:figma_squircle/figma_squircle.dart';

class LoginSheet extends StatelessWidget {
  const LoginSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double keyboardSize = MediaQuery.of(context).viewInsets.bottom;
    return Padding(
      padding: EdgeInsets.only(bottom: keyboardSize),
      child: Container(
        height: size.height * .55,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(25),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              "판다 에듀 로그인",
              style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                  color: mainTextColor),
              textAlign: TextAlign.start,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Text("아이디 혹은 이메일",
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.center),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 1),
              child: TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: mainColor, width: 3)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor, width: 3))),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "비밀번호",
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 1),
              child: TextFormField(
                decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: mainColor, width: 3)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: greyColor, width: 3))),
                obscureText: true,
              ),
            ),
            Expanded(child: Container(color: Colors.white)),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new),
                  padding: const EdgeInsets.only(right: 40, bottom: 10),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const HomeScreen());
                      },
                      child: const Text("로그인"),
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(120, 40),
                          elevation: 0.0,
                          primary: subColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11))
                              )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
