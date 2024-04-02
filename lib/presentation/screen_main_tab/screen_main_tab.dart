import 'package:exptracker/constants/constants.dart';
import 'package:exptracker/presentation/screen_catagories/screen_catagories.dart';
import 'package:exptracker/presentation/screen_home/screen_home.dart';
import 'package:exptracker/presentation/screen_transactions/screen_transactions.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionBadgeWidget.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';

class ScreenMainTab extends StatefulWidget {
  const ScreenMainTab({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _ScreenMainTabState createState() => _ScreenMainTabState();
}

class _ScreenMainTabState extends State<ScreenMainTab> with TickerProviderStateMixin {
  // TabController? _tabController;
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    //// Use normal tab controller
    // _tabController = TabController(
    //   initialIndex: 1,
    //   length: 4,
    //   vsync: this,
    // );

    //// use "MotionTabBarController" to replace with "TabController", if you need to programmatically change the tab
    _motionTabBarController = MotionTabBarController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      bottomNavigationBar: MotionTabBar(
        controller: _motionTabBarController, // Add this controller if you need to change your tab programmatically
        initialSelectedTab: "Home",
        useSafeArea: true, // default: true, apply safe area wrapper
        labels: const ["Home", "Catagories", "Transactions",],
        icons: const [Icons.home, Icons.shape_line_sharp, Icons.compare_arrows_rounded,],

       
        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.white,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: Colors.white,
        tabIconSelectedColor: mainColor,

        tabBarColor: mainColor,
        onTabItemSelected: (int value) {
          setState(() {
            _motionTabBarController!.index = value;
          });
        },
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
        controller: _motionTabBarController,
        children: <Widget>[
       const ScreenHome(),
       ScreenCata(),
       const ScreenTransactions(),
      
        ],
      ),
    );
  }
}

