import 'package:flutter_svg/svg.dart';
import 'package:web_demo/common/extension/text_style_extensions.dart';
import 'package:web_demo/common/extension/widget_extension.dart';
import '../common/extension/spacing.dart';
import '../components/drawer_list_tile.dart';
import '../config.dart';
import '../responsive.dart';
import '../widgets/constants.dart';

class DrawerProvider extends ChangeNotifier {
  Widget buildDesktopDrawer(context) {
    return ListView(children: [
      buildDrawerHeader(context),
      Container(
          margin: const EdgeInsets.only(right: 130, left: 30, top: 30),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 27,
          decoration: BoxDecoration(
              color: const Color(0xff374462),
              borderRadius: BorderRadius.circular(6)),
          alignment: Alignment.center,
          child: const Text("GENERAL",
              style: TextStyle(
                  fontFamily: 'outfit',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white))),
      DrawerTile(
          title: 'Dashboards',
          svgImg: 'assets/svg/dashboard_home.svg',
          tap: () {},
          children: const []),
      DrawerTile(
          title: 'Widgets',
          svgImg: 'assets/svg/Frame 2.svg',
          tap: () {},
          children: const []),
      DrawerTile(
          title: 'File Manager',
          svgImg: 'assets/svg/Frame 4.svg',
          tap: () {},
          children: const []),
      DrawerTile(
          title: 'Form',
          svgImg: 'assets/svg/Frame 5.svg',
          tap: () {},
          children: const []),
      DrawerTile(
          title: 'Bookmarks',
          svgImg: 'assets/svg/Frame 6.svg',
          tap: () {},
          children: const []),
      DrawerTile(
          title: 'UI Kits',
          svgImg: 'assets/svg/Frame 7.svg',
          tap: () {},
          children: const []),
      DrawerTile(
          title: 'Bonus Ui',
          svgImg: 'assets/svg/Frame 8.svg',
          tap: () {},
          children: const []),
      DrawerTile(
          title: 'Icons',
          svgImg: 'assets/svg/Frame 9.svg',
          tap: () {},
          children: const []),
      DrawerTile(
          title: 'Buttons',
          svgImg: 'assets/svg/Frame 10.svg',
          tap: () {},
          children: const []),
      DrawerTile(
          title: 'Others',
          svgImg: 'assets/svg/Frame 11.svg',
          tap: () {},
          children: const [])
    ]);
  }

  Widget buildTabletDrawer(context) {
    return ListView(children: [
      buildDrawerHeader(context),
      const TabletDrawerTile(svgImg: 'assets/svg/dashboard_home.svg'),
      const TabletDrawerTile(svgImg: 'assets/svg/Frame 2.svg'),
      const TabletDrawerTile(svgImg: 'assets/svg/Frame 4.svg'),
      const TabletDrawerTile(svgImg: 'assets/svg/Frame 5.svg'),
      const TabletDrawerTile(svgImg: 'assets/svg/Frame 6.svg'),
      const TabletDrawerTile(svgImg: 'assets/svg/Frame 7.svg'),
      const TabletDrawerTile(svgImg: 'assets/svg/Frame 8.svg'),
      const TabletDrawerTile(svgImg: 'assets/svg/Frame 9.svg'),
      const TabletDrawerTile(svgImg: 'assets/svg/Frame 10.svg'),
      const TabletDrawerTile(svgImg: 'assets/svg/Frame 11.svg')
    ]);
  }

  Widget buildAppBar(BuildContext context) {
    return AppBar(
        toolbarHeight: 74,
        titleSpacing: Insets.i30,
        title: buildAppBarTitle(context),
        actions: buildAppBarActions());
  }

  Widget buildAppBarTitle(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Default Dashboard",
          style: appCss.outfitBold20.textColor(const Color(0xff3D434A))),
      Row(children: [
        SvgPicture.asset('assets/svg/homeIcon.svg'),
        const HSpace(Insets.i4),
        Text("/ Dashboard / Default",
            style: appCss.outfitRegular14.textColor(const Color(0xff8D8D8D)))
      ])
    ]);
  }

  List<Widget> buildAppBarActions() {
    return [
      buildSearchIcon(),
      const HSpace(Insets.i15),
      buildNotificationIcon(),
      const HSpace(Insets.i15),
      buildBookmarkIcon(),
      const HSpace(Insets.i15),
      buildIcon('Star.svg'),
      const HSpace(Insets.i15),
      buildIcon('Message.svg'),
      const HSpace(Insets.i15),
      buildIcon('Bag.svg'),
      const HSpace(Insets.i15),
      Image.asset('assets/images/profileImage.png', height: 30),
      const HSpace(Insets.i10),
      buildUserProfile(),
    ];
  }

  Widget buildSearchIcon() {
    return Container(
            height: 30,
            decoration: const BoxDecoration(
                color: Color(0xffF4F7F9), shape: BoxShape.circle),
            padding: const EdgeInsets.all(6),
            child: SvgPicture.asset('assets/svg/Search.svg'))
        .gestures(onTap: () {});
  }

  Widget buildNotificationIcon() {
    return Container(
            height: 30,
            decoration: const BoxDecoration(
                color: Color(0xffF4F7F9), shape: BoxShape.circle),
            padding: const EdgeInsets.all(6),
            child: SvgPicture.asset('assets/svg/Notification.svg'))
        .gestures(onTap: () {});
  }

  Widget buildBookmarkIcon() {
    return Container(
            height: 30,
            decoration: const BoxDecoration(
                color: Color(0xffF4F7F9), shape: BoxShape.circle),
            padding: const EdgeInsets.all(6),
            child: SvgPicture.asset('assets/svg/Bookmark.svg'))
        .gestures(onTap: () {});
  }

  Widget buildIcon(String iconName) {
    return Container(
            height: 30,
            decoration: const BoxDecoration(
                color: Color(0xffF4F7F9), shape: BoxShape.circle),
            padding: const EdgeInsets.all(6),
            child: SvgPicture.asset('assets/svg/$iconName'))
        .gestures(onTap: () {});
  }

  Widget buildUserProfile() {
    return const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Alen Miller",
              style: TextStyle(
                  color: Color(0xff3D434A),
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'outfit')),
          Text("UI Designer",
              style: TextStyle(
                  color: Color(0xff8D8D8D),
                  fontFamily: 'outfit',
                  fontWeight: FontWeight.w400,
                  fontSize: 12))
        ]).marginOnly(right: 30);
  }

  Widget buildDrawerHeader(context) {
    return Container(
        padding: const EdgeInsets.all(appPadding),
        child: (Responsive.isDesktop(context))
            ? Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Image.asset('assets/images/mofiLogo.png',
                    height: 35, width: 100),
                Container(
                    margin: const EdgeInsets.only(top: 3),
                    height: 35,
                    decoration: const BoxDecoration(
                        color: Color(0xff374462),
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    width: 35,
                    padding: const EdgeInsets.all(7),
                    child: SvgPicture.asset('assets/svg/menu.svg'))
              ]).marginSymmetric(horizontal: 5)
            : Image.asset('assets/images/logo.png', height: 35, width: 100));
  }
}
