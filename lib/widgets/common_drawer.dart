import 'package:flutter_svg/svg.dart';
import 'package:web_demo/common/extension/text_style_extensions.dart';
import 'package:web_demo/common/extension/widget_extension.dart';
import '../config.dart';

  class CommonDrawer extends StatelessWidget {
  const CommonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
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
      ),
      ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 31),
          leading: SvgPicture.asset("assets/svg/dashboard_home.svg"),
          title: Text(
            "Dashboards",
            style: appCss.outfitSemiBold14,
          ),
          children: const [
            Text("Default"),
            Text("Project"),
            Text("E-Commerce"),
            Text("Education"),
            Text("NFT"),
          ]),
      ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 31),
          leading: SvgPicture.asset("assets/svg/Frame 2.svg"),
          title: Text(
            "Widgets",
            style: appCss.outfitSemiBold14,
          ),
          children: const [
            Text("Default"),
            Text("Project"),
            Text("E-Commerce"),
            Text("Education"),
            Text("NFT"),
          ]),
      ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 31),
          leading: SvgPicture.asset("assets/svg/dashboard_home.svg"),
          title: Text(
            "File Manager",
            style: appCss.outfitSemiBold14,
          ),
          children: const [
            Text("Default"),
            Text("Project"),
            Text("E-Commerce"),
            Text("Education"),
            Text("NFT"),
          ]),
      ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 31),
          leading: SvgPicture.asset("assets/svg/dashboard_home.svg"),
          title: Text(
            "Form",
            style: appCss.outfitSemiBold14,
          ),
          children: const [
            Text("Default"),
            Text("Project"),
            Text("E-Commerce"),
            Text("Education"),
            Text("NFT"),
          ]),
      ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 31),
          leading: SvgPicture.asset("assets/svg/dashboard_home.svg"),
          title: Text(
            "Bookmarks",
            style: appCss.outfitSemiBold14,
          ),
          children: const [
            Text("Default"),
            Text("Project"),
            Text("E-Commerce"),
            Text("Education"),
            Text("NFT"),
          ]),
      ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 31),
          leading: SvgPicture.asset("assets/svg/dashboard_home.svg"),
          title: Text(
            "UI Kits",
            style: appCss.outfitSemiBold14,
          ),
          children: const [
            Text("Default"),
            Text("Project"),
            Text("E-Commerce"),
            Text("Education"),
            Text("NFT"),
          ]),
      ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 31),
          leading: SvgPicture.asset("assets/svg/dashboard_home.svg"),
          title: Text(
            "Bonus Ui",
            style: appCss.outfitSemiBold14,
          ),
          children: const [
            Text("Default"),
            Text("Project"),
            Text("E-Commerce"),
            Text("Education"),
            Text("NFT"),
          ]),
      ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 31),
          leading: SvgPicture.asset("assets/svg/dashboard_home.svg"),
          title: Text(
            "Icons",
            style: appCss.outfitSemiBold14,
          ),
          children: const [
            Text("Default"),
            Text("Project"),
            Text("E-Commerce"),
            Text("Education"),
            Text("NFT"),
          ]),
      ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 31),
          leading: SvgPicture.asset("assets/svg/dashboard_home.svg"),
          title: Text(
            "Buttons",
            style: appCss.outfitSemiBold14,
          ),
          children: const [
            Text("Default"),
            Text("Project"),
            Text("E-Commerce"),
            Text("Education"),
            Text("NFT"),
          ]),
      ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 31),
          leading: SvgPicture.asset("assets/svg/dashboard_home.svg"),
          title: Text("Others", style: appCss.outfitSemiBold14),
          children: const [
            Text("Default"),
            Text("Project"),
            Text("E-Commerce"),
            Text("Education"),
            Text("NFT")
          ])
    ]);
  }
}
