import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:web_demo/common/extension/text_style_extensions.dart';
import 'package:web_demo/common/extension/widget_extension.dart';
import 'package:web_demo/components/profile_info.dart';
import 'package:web_demo/provider/dashboard_provider.dart';

import '../common/extension/spacing.dart';
import '../config.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(
      builder: (context,dashboardPvr,child) {
        return Container(
            width: dashboardPvr.widthMediaQuery(context),
            decoration: const BoxDecoration(color: Colors.white),
            height: 74,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Default Dashboard",
                            style: appCss.outfitBold20
                                .textColor(const Color(0xff3D434A))),
                        Row(children: [
                          SvgPicture.asset('assets/svg/homeIcon.svg'),
                          const HSpace(Insets.i4),
                          Text("/ Dashboard / Default",
                              style: appCss.outfitRegular14
                                  .textColor(const Color(0xff3D434A)))
                        ])
                      ]).marginOnly(top: 15),
                  ProfileInfo()
                ]));
      }
    );
  }
}
