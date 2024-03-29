import 'package:flutter_svg/flutter_svg.dart';

import '../config.dart';

class DrawerTile extends StatelessWidget {
  final String title, svgImg;
  final VoidCallback tap;
  final List<Widget> children;

  const DrawerTile(
      {super.key,
      required this.title,
      required this.svgImg,
      required this.tap,
      required this.children});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        tilePadding: const EdgeInsets.symmetric(horizontal: 31),
        leading: SvgPicture.asset(svgImg),
        title: Text(title, style: appCss.outfitSemiBold14),
        children: children);
  }
}

class TabletDrawerTile extends StatelessWidget {
  final String svgImg;

  const TabletDrawerTile({super.key, required this.svgImg});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        child: SvgPicture.asset(svgImg),
        margin: EdgeInsets.all(10));
  }
}
