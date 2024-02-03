import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:web_demo/common/extension/spacing.dart';
import 'package:web_demo/common/extension/text_style_extensions.dart';
import 'package:web_demo/common/extension/widget_extension.dart';
import 'package:web_demo/config.dart';
import 'package:web_demo/provider/dashboard_provider.dart';
import 'package:web_demo/responsive.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(builder: (context, dashboardPvr, child) {
      return SafeArea(
          child: Scaffold(
              appBar: Responsive.isDesktop(context)
                  ? AppBar(
                      titleSpacing: Insets.i30,
                      title: Column(
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
                          ]),
                      actions: [
                        Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: 46,
                            child: TextField(
                                style: appCss.outfitMedium16
                                    .textColor(const Color(0xff8D8D8D)),
                                decoration: InputDecoration(
                                    fillColor: const Color(0xffF4F7F9),
                                    filled: true,
                                    border: const UnderlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100))),
                                    prefixIcon: SvgPicture.asset(
                                            'assets/svg/Search.svg')
                                        .padding(
                                            right: 10, left: 16, vertical: 11),
                                    hintText: 'Search anything...',
                                    hintStyle: appCss.outfitMedium16
                                        .textColor(const Color(0xff8D8D8D))))),
                        HSpace(Insets.i15),
                        Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffF4F7F9),
                                shape: BoxShape.circle),
                            padding: const EdgeInsets.all(8),
                            child: SvgPicture.asset(
                                'assets/svg/Notification.svg')),
                        HSpace(Insets.i15),
                        Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffF4F7F9),
                                shape: BoxShape.circle),
                            padding: const EdgeInsets.all(8),
                            child: SvgPicture.asset('assets/svg/Bookmark.svg')),
                        HSpace(Insets.i15),
                        Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffF4F7F9),
                                shape: BoxShape.circle),
                            padding: const EdgeInsets.all(8),
                            child: SvgPicture.asset('assets/svg/Star.svg')),
                        HSpace(Insets.i15),
                        Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffF4F7F9),
                                shape: BoxShape.circle),
                            padding: const EdgeInsets.all(8),
                            child: SvgPicture.asset('assets/svg/Message.svg')),
                        HSpace(Insets.i15),
                        Container(
                            decoration: const BoxDecoration(
                                color: Color(0xffF4F7F9),
                                shape: BoxShape.circle),
                            padding: const EdgeInsets.all(8),
                            child: SvgPicture.asset('assets/svg/Bag.svg')),
                        HSpace(Insets.i15),
                        Image.asset('assets/images/profileImage.png',
                            height: 50),
                        HSpace(Insets.i10),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Alen Miller",
                                  style: appCss.lexendSemiBold16
                                      .textColor(const Color(0xff3D434A))),
                              Text("UI Designer",
                                  style: appCss.outfitMedium12
                                      .textColor(const Color(0xff8D8D8D)))
                            ]).marginOnly(right: 30),
                      ],
                    )
                  : Responsive.isTablet(context)
                      ? AppBar(
                          titleSpacing: Insets.i30,
                          title: Column(
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
                              ]),
                          actions: [
                            Container(height: 35,
                                decoration: const BoxDecoration(
                                    color: Color(0xffF4F7F9),
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.asset(
                                    'assets/svg/Search.svg'))
                                .inkWell(onTap: () {}),
                            HSpace(Insets.i15),
                            Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xffF4F7F9),
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.asset(
                                    'assets/svg/Notification.svg')),
                            HSpace(Insets.i15),
                            Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xffF4F7F9),
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.asset(
                                    'assets/svg/Bookmark.svg')),
                            HSpace(Insets.i15),
                            Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xffF4F7F9),
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.asset('assets/svg/Star.svg')),
                            HSpace(Insets.i15),
                            Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xffF4F7F9),
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(8),
                                child:
                                    SvgPicture.asset('assets/svg/Message.svg')),
                            HSpace(Insets.i15),
                            Container(
                                decoration: const BoxDecoration(
                                    color: Color(0xffF4F7F9),
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.asset('assets/svg/Bag.svg')),
                            HSpace(Insets.i15),
                            if (Responsive.isTablet(context))
                              Image.asset('assets/images/profileImage.png',
                                  height: 50),
                            HSpace(Insets.i10),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Alen Miller",
                                      style: appCss.lexendSemiBold12
                                          .textColor(const Color(0xff3D434A))),
                                  Text("UI Designer",
                                      style: appCss.outfitMedium10
                                          .textColor(const Color(0xff8D8D8D)))
                                ]).marginOnly(right: 30),
                          ],
                        )
                      : AppBar(
                          titleSpacing: Insets.i30,
                          title: Container(
                              height: 35,
                              decoration: const BoxDecoration(
                                  color: Color(0xff374462),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                              width: 35,
                              padding: const EdgeInsets.all(8),
                              child: SvgPicture.asset('assets/svg/menu.svg')),
                          actions: [
                            /*TextField(
                                    style: appCss.outfitMedium16
                                        .textColor(const Color(0xff8D8D8D)),
                                    decoration: InputDecoration(
                                        fillColor: const Color(0xffF4F7F9),
                                        filled: true,
                                        border: const UnderlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100))),
                                        prefixIcon: SvgPicture.asset(
                                                'assets/svg/Search.svg')
                                            .padding(
                                                right: 10,
                                                left: 16,
                                                vertical: 11),
                                        hintText: 'Search anything...',
                                        hintStyle: appCss.outfitMedium16
                                            .textColor(
                                                const Color(0xff8D8D8D))))*/
                            Container(height: 35,
                                    decoration: const BoxDecoration(
                                        color: Color(0xffF4F7F9),
                                        shape: BoxShape.circle),
                                    padding: const EdgeInsets.all(8),
                                    child: SvgPicture.asset(
                                        'assets/svg/Search.svg'))
                                .inkWell(onTap: () {}),
                            HSpace(Insets.i5),
                            Container(height: 35,
                                decoration: const BoxDecoration(
                                    color: Color(0xffF4F7F9),
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.asset(
                                    'assets/svg/Notification.svg')),
                            HSpace(Insets.i5),
                            Container(height: 35,
                                decoration: const BoxDecoration(
                                    color: Color(0xffF4F7F9),
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.asset(
                                    'assets/svg/Bookmark.svg')),
                            HSpace(Insets.i5),
                            Container(height: 35,
                                decoration: const BoxDecoration(
                                    color: Color(0xffF4F7F9),
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.asset('assets/svg/Star.svg')),
                            HSpace(Insets.i5),
                            Container(height: 35,
                                decoration: const BoxDecoration(
                                    color: Color(0xffF4F7F9),
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(8),
                                child:
                                    SvgPicture.asset('assets/svg/Message.svg')),
                            HSpace(Insets.i5),
                            Container(height: 35,
                                decoration: const BoxDecoration(
                                    color: Color(0xffF4F7F9),
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(8),
                                child: SvgPicture.asset('assets/svg/Bag.svg')),
                            HSpace(Insets.i5),
                            Image.asset('assets/images/profileImage.png',
                                height: 35),
                            HSpace(Insets.i30),
                          ],
                        ),
              backgroundColor: const Color(0xffF4F7F9),
              body: SingleChildScrollView(
                  child: Column(children: [
                    if (Responsive.isMobile(context))
                    Container(height: 74,decoration: BoxDecoration(color: appColor(context).appTheme.whiteColor),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Default Dashboard",
                                style: appCss.outfitBold20
                                    .textColor(const Color(0xff3D434A))).marginOnly(left: 10),
                            Row(children: [
                              SvgPicture.asset('assets/svg/homeIcon.svg'),
                              const HSpace(Insets.i4),
                              Text("/ Dashboard / Default",
                                  style: appCss.outfitRegular14
                                      .textColor(const Color(0xff3D434A)))
                            ]).marginOnly(right: 10)
                          ],
                        )),
                if (Responsive.isDesktop(context))
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.all(25),
                            height: dashboardPvr.heightMediaQuery(context),
                            width: dashboardPvr.widthMediaQuery(context),
                            decoration: BoxDecoration(
                                color: appColor(context).appTheme.whiteColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(17)))),
                      ),
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.all(25),
                            height: dashboardPvr.heightMediaQuery(context),
                            width: dashboardPvr.widthMediaQuery(context),
                            decoration: BoxDecoration(
                                color: appColor(context).appTheme.whiteColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(17)))),
                      ),
                    ],
                  ),
              ]))));
    });
  }
}
