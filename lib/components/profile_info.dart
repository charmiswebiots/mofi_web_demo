import 'package:flutter_svg/svg.dart';
import 'package:web_demo/common/extension/text_style_extensions.dart';
import 'package:web_demo/common/extension/widget_extension.dart';

import '../config.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Container(
          width: 487,
          height: 46,
          child: TextField(
              style: appCss.outfitMedium16.textColor(const Color(0xff8D8D8D)),
              decoration: InputDecoration(
                  fillColor: const Color(0xffF4F7F9),
                  filled: true,
                  border: const UnderlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  prefixIcon: SvgPicture.asset('assets/svg/Search.svg')
                      .padding(right: 10, left: 16, vertical: 11),
                  hintText: 'Search anything...',
                  hintStyle: appCss.outfitMedium16
                      .textColor(const Color(0xff8D8D8D))))),
      Container(
          decoration: const BoxDecoration(
              color: Color(0xffF4F7F9), shape: BoxShape.circle),
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset('assets/svg/Notification.svg')),
      Container(
          decoration: const BoxDecoration(
              color: Color(0xffF4F7F9), shape: BoxShape.circle),
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset('assets/svg/Bookmark.svg')),
      Container(
          decoration: const BoxDecoration(
              color: Color(0xffF4F7F9), shape: BoxShape.circle),
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset('assets/svg/Star.svg')),
      Container(
          decoration: const BoxDecoration(
              color: Color(0xffF4F7F9), shape: BoxShape.circle),
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset('assets/svg/Message.svg')),
      Container(
          decoration: const BoxDecoration(
              color: Color(0xffF4F7F9), shape: BoxShape.circle),
          padding: const EdgeInsets.all(8),
          child: SvgPicture.asset('assets/svg/Bag.svg')),
      Image.asset('assets/images/profileImage.png', height: 50, width: 45),
      Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Alen Miller",
                style:
                    appCss.lexendSemiBold16.textColor(const Color(0xff3D434A))),
            Text("UI Designer",
                style: appCss.outfitMedium12.textColor(const Color(0xff8D8D8D)))
          ])
    ]);
  }
}
