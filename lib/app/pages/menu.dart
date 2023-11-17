import 'package:flutter/material.dart';
import 'package:pas_mobile/app/pages/event_purchased_page/event_purchased_page_view.dart';
import 'package:pas_mobile/app/pages/home_page/home_page_view.dart';
import 'package:pas_mobile/app/pages/profile_page/profile_page_view.dart';
import 'package:pas_mobile/common/theme/theme.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    PersistentTabController _controller =
        PersistentTabController(initialIndex: 0);

    List<Widget> _buildScreens() {
      return [
        HomePageView(),
        EventPurchasedPageView(),
        ProfilePageView(),
      ];
    }

    List<PersistentBottomNavBarItem> _navbarItem() {
      return [
        PersistentBottomNavBarItem(
          icon: Icon(Icons.home_filled, shadows: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(3, 3),
            ),
          ]),
          inactiveColorPrimary: ColorsBase.lightGreyBase,
          activeColorPrimary: ColorsBase.orangeBase,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.sticky_note_2_rounded, shadows: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(3, 3),
            ),
          ]),
          inactiveColorPrimary: ColorsBase.lightGreyBase,
          activeColorPrimary: ColorsBase.orangeBase,
        ),
        PersistentBottomNavBarItem(
          icon: Icon(Icons.person, shadows: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(3, 3),
            ),
          ]),
          inactiveColorPrimary: ColorsBase.lightGreyBase,
          activeColorPrimary: ColorsBase.orangeBase,
        ),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navbarItem(),
      confineInSafeArea: true,
      backgroundColor: ColorsBase.purpleLightBase,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: width * 0.075),
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(20),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }
}
