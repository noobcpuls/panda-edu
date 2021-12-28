import 'package:flutter/material.dart';
import './preview/get_started.dart';
import './preview/welcome.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  _PreviewScreenState createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  int _currentPage = 0;
  final PageController _controller = PageController();

  final List<Widget> _pages = [
    const WelcomePage(
      title: "안녕하세요!",
      description: "판다 에듀에 오신 것을 환영해요.",
      image: "assets/images/undraw_creative_woman_re_u5tk.svg",
    ),
    const WelcomePage(
      title: "나에게 맞는\n선생님 찾기.",
      description: "판다 에듀에서\n여러분의 멘토가 될 선생님을 찾아드립니다.",
      image: "assets/images/undraw_about_me_re_82bv.svg",
    ),
    const WelcomePage(
      title: "손쉬운 \n학습 일정 관리",
      description: "판다 에듀가 여러분의\n학습 일정을 관리해드릴게요.",
      image: "assets/images/undraw_shared_goals_re_jvqd.svg",
    ),
    const GetStarted()
  ];

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              itemCount: _pages.length,
              onPageChanged: _onChanged,
              itemBuilder: (context, index) {
                return _pages[index];
              },
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                          List<Widget>.generate(_pages.length, (int index) {
                        return AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          height: 10,
                          width: 10,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? const Color(0xFF00B7A0)
                                : const Color(0xFF00E6C8).withOpacity(0.5),
                          ),
                        );
                      })),
                ],
              ),
            ),
          ],
        ));
  }
}
