import 'package:flutter/material.dart';
import 'package:pas_mobile/app/pages/event_purchased_page/event_purchased_page_view.dart';
import 'package:pas_mobile/app/pages/home_page/home_page_view.dart';
import 'package:pas_mobile/app/pages/profile_page/profile_page_view.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {

    PersistentTabController _controller = PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        HomePageView(),
        EventPurchasedPageView(),
        ProfilePageView(),
      ];
    }

    List<PersistentBottomNavBarItem> _navbarItem() {
      return [
        PersistentBottomNavBarItem(icon: Icon(Icons.home_filled)),
        PersistentBottomNavBarItem(icon: Icon(Icons.sticky_note_2_rounded)),
        PersistentBottomNavBarItem(icon: Icon(Icons.person)),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navbarItem(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property.
    );

  }
}
