import 'package:web_demo/components/drawer_list_tile.dart';
import 'package:web_demo/widgets/constants.dart';
import '../config.dart';

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor: const Color(0xff374462),
        child: ListView(children: [
      Container(
          padding: const EdgeInsets.all(appPadding),
          child: Image.asset('assets/images/mofiLogo.png')),
          DrawerTile(title: 'Dashboards', svgImg: 'assets/svg/dashboard_home.svg', tap: () {}, children: []),
          DrawerTile(title: 'Widgets', svgImg: 'assets/svg/Frame 2.svg', tap: (){} ,children: []),
          DrawerTile(title: 'File Manager', svgImg: 'assets/svg/Frame 4.svg', tap: (){} ,children: []),
          DrawerTile(title: 'Form', svgImg: 'assets/svg/dashboard_home.svg', tap: (){} ,children: []),
          DrawerTile(title: 'Bookmarks', svgImg: 'assets/svg/dashboard_home.svg', tap: (){} ,children: []),
          DrawerTile(title: 'UI Kits', svgImg: 'assets/svg/dashboard_home.svg', tap: (){} ,children: []),
          DrawerTile(title: 'Bonus Ui', svgImg: 'assets/svg/dashboard_home.svg', tap: (){} ,children: []),
          DrawerTile(title: 'Icons', svgImg: 'assets/svg/dashboard_home.svg', tap: (){} ,children: []),
          DrawerTile(title: 'Buttons', svgImg: 'assets/svg/dashboard_home.svg', tap: (){} ,children: []),
          DrawerTile(title: 'Others', svgImg: 'assets/svg/dashboard_home.svg', tap: (){} ,children: []),
    ]));
  }
}
/*Column(children: [
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/mofiLogo.png',
              height: 35,
              width: 100,
            ),
            Container(
                height: 38,
                decoration: const BoxDecoration(
                    color: Color(0xff374462),
                    borderRadius:
                    BorderRadius.all(Radius.circular(6))),
                width: 38,
                padding: const EdgeInsets.all(7),
                child: SvgPicture.asset('assets/svg/menu.svg'))
          ]).paddingSymmetric(horizontal: 24, vertical: 20),
      Divider(),
      Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 31),
            decoration: const BoxDecoration(
                color: Color(0xff374462),
                borderRadius: BorderRadius.all(Radius.circular(6))),
            padding: const EdgeInsets.symmetric(
                vertical: 6, horizontal: 10),
            child: Text("GENERAL",
                style: appCss.outfitSemiBold12.textColor(
                    appColor(context).appTheme.whiteColor)),
          ),
        ],
      )
    ])*/
