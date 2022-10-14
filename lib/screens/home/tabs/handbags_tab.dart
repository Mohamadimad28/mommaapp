import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mommaapp/screens/home/product_details_screen.dart';
import 'package:mommaapp/widgets/handbags_tab_content.dart';
import 'package:mommaapp/widgets/handbags_tab_indicator.dart';

import '../../../componts/grid_view_products.dart';
import '../../../modles/handbagstap.dart';

class HandbagesTab extends StatefulWidget {
  const HandbagesTab({Key? key}) : super(key: key);

  @override
  State<HandbagesTab> createState() => _HandbagesTabState();
}

class _HandbagesTabState extends State<HandbagesTab> {
  late PageController _pageController;
  int _currentPage = 0;

  /**
   *  final List<HandBagsTap> _handBags = <HandBagsTap>[
      HandBagsTap(
      image: 'images/hand.png',
      title: 'Hand bags',
      subtitle: '\$ 100',
      ),
      HandBagsTap(
      image: 'images/h1.png',
      title: 'Bagpack',
      subtitle: '\$ 100',
      ),
      HandBagsTap(
      image: 'images/h2.png',
      title: 'Bagpack',
      subtitle: '\$ 100',
      ),
      HandBagsTap(
      image: 'images/hand.png',
      title: 'Hand bags',
      subtitle: '\$ 100',
      ),
      ];*/

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
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 250,
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                HandbagsTabContent(image: 'images/hand.png'),
                HandbagsTabContent(image: 'images/h1.png'),
                HandbagsTabContent(image: 'images/h2.png'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HandbagsTabIndicator(
                marginEnd: 10,
                selected: _currentPage == 0,
              ),
              HandbagsTabIndicator(
                marginEnd: 10,
                selected: _currentPage == 1,
              ),
              HandbagsTabIndicator(
                selected: _currentPage == 2,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
             child: Padding(
               padding:
                   const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
               child: GridView.builder(
                cacheExtent: 0.0,
                 itemCount: HandBagsTap.handBags.length,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   mainAxisSpacing: 10,
                   crossAxisSpacing: 10,
                   childAspectRatio: 140 / 200,
                 ),
                 itemBuilder: (context, index) {
                   return GridViewProducts(HandBagsTap.handBags[index]);
                 },
               ),
             ),
          ),
        ],
      ),
    );
  }
}
/**SafeArea(
    child: Expanded(
    child:
    PageView(
    controller: _pageController,
    scrollDirection: Axis.horizontal,
    onPageChanged: (int page) {
    setState(() {
    _currentPage = page;
    });
    },
    children: [
    HandbagsTabContent(image: 'images/hand.png'),
    HandbagsTabContent(image: 'images/h1.png'),
    HandbagsTabContent(image: 'images/h2.png'),
    ],
    ),
    ),
    );*/
/**controller: _pageController,
    scrollDirection: Axis.horizontal,
    children: [
    HandbagsTabContent(image: 'images/hand.png'),
    HandbagsTabContent(image: 'images/h1.png'),
    HandbagsTabContent(image: 'images/h2.png'),
    ],
    ),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    HandbagsTabIndicator(
    marginEnd: 10,
    selected: _currentPage == 0,
    ),
    HandbagsTabIndicator(
    marginEnd: 10,
    selected: _currentPage == 1,
    ),
    HandbagsTabIndicator(
    selected: _currentPage == 2,
    ),
    ],
    ),*/
