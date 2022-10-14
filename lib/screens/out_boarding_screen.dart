import 'package:flutter/material.dart';
import 'package:mommaapp/widgets/out_boarding_content.dart';

import '../widgets/out_boarding_indicator.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Visibility(
                visible: _currentPage < 2,
                child: TextButton(
                  onPressed: () {
                    _pageController.animateToPage(
                      2,
                      duration: Duration(seconds: 2),
                      curve: Curves.easeInCirc,
                    );
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xFF6A90F2),
                    ),
                  ),
                  style: TextButton.styleFrom(),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: [
                  OutBoardingContent(
                    images: 'images/bording1.png',
                    title: 'Welcome!',
                    suptitle:
                        'Now were up in the big leagues gettingour turn at bat. The Brady Bunch that\'s the way we  Brady Bunch..',
                  ),
                  OutBoardingContent(
                    images: 'images/bording2.png',
                    title: 'Add to cart',
                    suptitle:
                        'Now were up in the big leagues gettingour turn at bat. The Brady Bunch that\'s the way we  Brady Bunch..',
                  ),
                  OutBoardingContent(
                    images: 'images/bording3.png',
                    title: 'Enjoy Purchase!',
                    suptitle:
                        'Now were up in the big leagues gettingour turn at bat. The Brady Bunch that\'s the way we  Brady Bunch..',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutBoardingIndicator(
                  marginEnd: 14,
                  selected: _currentPage == 0,
                ),
                OutBoardingIndicator(
                  marginEnd: 14,
                  selected: _currentPage == 1,
                ),
                OutBoardingIndicator(
                  selected: _currentPage == 2,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Visibility(
                visible: _currentPage == 2,
                maintainAnimation: true,
                maintainSize: true,
                maintainState: true,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  },
                  child: Text('START'),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(250, 45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      primary: Color(0xFF6A90F2)),
                )),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
