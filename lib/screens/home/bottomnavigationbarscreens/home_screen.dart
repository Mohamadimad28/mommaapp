import 'package:flutter/material.dart';
import 'package:mommaapp/screens/home/tabs/handbags_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          labelColor: const Color(0xFF474559),
          unselectedLabelColor: const Color(0xFF9E9DB0),
          indicatorColor: const Color(0xFF6A90F2),
          indicatorWeight: 3,
          isScrollable: true,
          onTap: (int index) {
            setState(() {
              _tabController.index = index;
            });
          },
          tabs: const [
            Tab(
              text: 'Kinsa',
            ),
            Tab(
              text: 'Women\'s',
            ),
            Tab(
              text: 'Handbags',
            ),
            Tab(
              text: 'Boots',
            ),
            Tab(
              text: 'Mens',
            ),
          ],
        ),
    Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              Center(child: Text('Kinsa')),
              Center(child: Text('Women\'s')),
              HandbagesTab(),
              Center(child: Text('Boots')),
              Center(child: Text('Mens')),
            ],
          ),
        ),
      ],
    );
  }
}
/**TabBar(
    controller: _tabController,
    labelColor: Color(0xFF474559),
    unselectedLabelColor: Color(0xFF9E9DB0),
    indicatorColor: Color(0xFF6A90F2),
    indicatorWeight: 3,
    isScrollable: true,
    onTap: (int index) {
    setState(() {
    _tabController.index = index;
    });
    },
    tabs: [
    Tab(
    text: 'Kinsa',
    ),
    Tab(
    text: 'Womens',
    ),
    Tab(
    text: 'Handbags',
    ),
    Tab(
    text: 'Boots',
    ),
    Tab(
    text: 'Mens',
    ),
    ],
    ),
    TabBarView(
    controller: _tabController,
    children: [
    Text('ffff'),
    Text('ffff'),
    HandbagesTab(),
    Text('ffff'),
    Text('ffff'),
    ],
    ),*/
