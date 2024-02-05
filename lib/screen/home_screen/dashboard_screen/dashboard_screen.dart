import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
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
      final List<ChartData> chartData = [
        ChartData('David', 30, const Color(0xff7A70BA)),
        ChartData('Steve', 25, const Color(0xffC95E9E)),
        ChartData('Jack', 35, const Color(0xffD77748)),
        ChartData('Others', 55, const Color(0xff48A3D7))
      ];
      return SafeArea(
          child: Scaffold(
              appBar: Responsive.isDesktop(context)
                  ? AppBar(
                      toolbarHeight: 74,
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
                                      .textColor(const Color(0xff8D8D8D)))
                            ])
                          ]),
                      actions: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.15,
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
                                              right: 10,
                                              left: 16,
                                              vertical: 11),
                                      hintText: 'Search anything...',
                                      hintStyle: appCss.outfitMedium16
                                          .textColor(
                                              const Color(0xff8D8D8D))))),
                          const HSpace(Insets.i15),
                          Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xffF4F7F9),
                                  shape: BoxShape.circle),
                              padding: const EdgeInsets.all(8),
                              child: SvgPicture.asset(
                                  'assets/svg/Notification.svg')),
                          const HSpace(Insets.i15),
                          Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xffF4F7F9),
                                  shape: BoxShape.circle),
                              padding: const EdgeInsets.all(8),
                              child:
                                  SvgPicture.asset('assets/svg/Bookmark.svg')),
                          const HSpace(Insets.i15),
                          Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xffF4F7F9),
                                  shape: BoxShape.circle),
                              padding: const EdgeInsets.all(8),
                              child: SvgPicture.asset('assets/svg/Star.svg')),
                          const HSpace(Insets.i15),
                          Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xffF4F7F9),
                                  shape: BoxShape.circle),
                              padding: const EdgeInsets.all(8),
                              child:
                                  SvgPicture.asset('assets/svg/Message.svg')),
                          const HSpace(Insets.i15),
                          Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xffF4F7F9),
                                  shape: BoxShape.circle),
                              padding: const EdgeInsets.all(8),
                              child: SvgPicture.asset('assets/svg/Bag.svg')),
                          const HSpace(Insets.i15),
                          Image.asset('assets/images/profileImage.png',
                              height: 50),
                          const HSpace(Insets.i10),
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
                              ]).marginOnly(right: 30)
                        ])
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
                                          .textColor(const Color(0xff8D8D8D)))
                                ])
                              ]),
                          actions: [
                              Container(
                                      height: 35,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffF4F7F9),
                                          shape: BoxShape.circle),
                                      padding: const EdgeInsets.all(8),
                                      child: SvgPicture.asset(
                                          'assets/svg/Search.svg'))
                                  .inkWell(onTap: () {}),
                              const HSpace(Insets.i15),
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF4F7F9),
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(8),
                                  child: SvgPicture.asset(
                                      'assets/svg/Notification.svg')),
                              const HSpace(Insets.i15),
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF4F7F9),
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(8),
                                  child: SvgPicture.asset(
                                      'assets/svg/Bookmark.svg')),
                              const HSpace(Insets.i15),
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF4F7F9),
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(8),
                                  child:
                                      SvgPicture.asset('assets/svg/Star.svg')),
                              const HSpace(Insets.i15),
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF4F7F9),
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(8),
                                  child: SvgPicture.asset(
                                      'assets/svg/Message.svg')),
                              const HSpace(Insets.i15),
                              Container(
                                  decoration: const BoxDecoration(
                                      color: Color(0xffF4F7F9),
                                      shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(8),
                                  child:
                                      SvgPicture.asset('assets/svg/Bag.svg')),
                              const HSpace(Insets.i15),
                              if (Responsive.isTablet(context))
                                Image.asset('assets/images/profileImage.png',
                                    height: 50),
                              const HSpace(Insets.i10),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Alen Miller",
                                        style: appCss.lexendSemiBold12
                                            .textColor(
                                                const Color(0xff3D434A))),
                                    Text("UI Designer",
                                        style: appCss.outfitMedium10
                                            .textColor(const Color(0xff8D8D8D)))
                                  ]).marginOnly(right: 30)
                            ])
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
                              Container(
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffF4F7F9),
                                          shape: BoxShape.circle),
                                      padding: const EdgeInsets.all(6),
                                      child: SvgPicture.asset(
                                          'assets/svg/Search.svg'))
                                  .gestures(onTap: () {}),
                              Container(
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffF4F7F9),
                                          shape: BoxShape.circle),
                                      padding: const EdgeInsets.all(6),
                                      child: SvgPicture.asset(
                                          'assets/svg/Notification.svg'))
                                  .gestures(onTap: () {}),
                              Container(
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffF4F7F9),
                                          shape: BoxShape.circle),
                                      padding: const EdgeInsets.all(6),
                                      child: SvgPicture.asset(
                                          'assets/svg/Bookmark.svg'))
                                  .gestures(onTap: () {}),
                              Container(
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffF4F7F9),
                                          shape: BoxShape.circle),
                                      padding: const EdgeInsets.all(6),
                                      child: SvgPicture.asset(
                                          'assets/svg/Star.svg'))
                                  .gestures(onTap: () {}),
                              Container(
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffF4F7F9),
                                          shape: BoxShape.circle),
                                      padding: const EdgeInsets.all(6),
                                      child: SvgPicture.asset(
                                          'assets/svg/Message.svg'))
                                  .gestures(onTap: () {}),
                              Container(
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffF4F7F9),
                                          shape: BoxShape.circle),
                                      padding: const EdgeInsets.all(6),
                                      child: SvgPicture.asset(
                                          'assets/svg/Bag.svg'))
                                  .gestures(onTap: () {}),
                              Image.asset('assets/images/profileImage.png',
                                  height: 35),
                              const HSpace(Insets.i30)
                            ]),
              backgroundColor: const Color(0xffF4F7F9),
              body: SingleChildScrollView(
                  child: Column(children: [
                if (Responsive.isMobile(context))
                  Container(
                      height: 55,
                      decoration: DottedDecoration(
                          linePosition: LinePosition.top, dash: const [2, 2]),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Default Dashboard",
                                    style: appCss.outfitBold20
                                        .textColor(const Color(0xff3D434A)))
                                .marginOnly(left: 10),
                            Row(children: [
                              SvgPicture.asset('assets/svg/homeIcon.svg'),
                              const HSpace(Insets.i4),
                              Text("/ Dashboard / Default",
                                  style: appCss.outfitRegular14
                                      .textColor(const Color(0xff8D8D8D)))
                            ]).marginOnly(right: 10)
                          ])).backgroundColor(Colors.white),
                Row(children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                          margin: const EdgeInsets.all(25),
                          height: dashboardPvr.heightMediaQuery(context),
                          width: dashboardPvr.widthMediaQuery(context),
                          decoration: BoxDecoration(
                              color: appColor(context).appTheme.whiteColor,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(17))))),
                  Expanded(
                      flex: 2,
                      child: Container(
                          margin: const EdgeInsets.all(25),
                          height: dashboardPvr.heightMediaQuery(context),
                          width: dashboardPvr.widthMediaQuery(context),
                          decoration: BoxDecoration(
                              color: appColor(context).appTheme.whiteColor,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(17))))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          margin: const EdgeInsets.all(25),
                          width: dashboardPvr.widthMediaQuery(context),
                          decoration: BoxDecoration(
                              color: appColor(context).appTheme.whiteColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(17))),
                          child: Column(children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Shifts Overview",
                                      style: appCss.outfitSemiBold18
                                          .textColor(const Color(0xff3D434A))),
                                  Row(children: [
                                    Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 14, vertical: 7),
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            color: Color(0xffF4F7F9)),
                                        child: Row(children: [
                                          Text("Location",
                                              style: appCss.outfitMedium14
                                                  .textColor(
                                                      const Color(0xff8D8D8D))),
                                          SvgPicture.asset(
                                              'assets/svg/ArrowDown.svg')
                                        ])),
                                    const HSpace(Insets.i10),
                                    SvgPicture.asset(
                                        "assets/svg/moreOption.svg")
                                  ])
                                ]).marginOnly(
                                top: AppRadius.r10, left: 24, right: 24),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(children: [
                                    Positioned(
                                        left: 70,
                                        top: 70,
                                        child: Container(
                                            height: 180,
                                            width: 180,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                border: Border.all(
                                                    color:
                                                        const Color(0xffF4F7F9),
                                                    width: 8)))),
                                    SfCircularChart(series: <CircularSeries>[
                                      DoughnutSeries<ChartData, String>(
                                          innerRadius: '90%',
                                          explode: true,
                                          radius: '58%',
                                          explodeOffset: '5%',
                                          explodeAll: true,
                                          animationDuration: AppRadius.r2,
                                          dataSource: chartData,
                                          xValueMapper: (ChartData data, _) =>
                                              data.x,
                                          yValueMapper: (ChartData data, _) =>
                                              data.y,
                                          cornerStyle: CornerStyle.bothCurve)
                                    ]),
                                    Positioned(
                                        left: 90,
                                        top: 90,
                                        child: Container(
                                            alignment: Alignment.center,
                                            height: 140,
                                            width: 140,
                                            decoration: const BoxDecoration(
                                                color: Color(0xffF4F7F9),
                                                shape: BoxShape.circle),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                    textAlign: TextAlign.center,
                                                    "\$ 34,098",
                                                    style: appCss
                                                        .outfitSemiBold20
                                                        .textColor(const Color(
                                                            0xff3D434A))),
                                                Text(
                                                    textAlign: TextAlign.center,
                                                    "Total Overview",
                                                    style: appCss.outfitMedium14
                                                        .textColor(const Color(
                                                            0xff8D8D8D))),
                                              ],
                                            ))),
                                  ]),
                                  SizedBox(
                                      height: 100,
                                      width: 300,
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 15),
                                                          width: 10,
                                                          height: 10,
                                                          decoration: const BoxDecoration(
                                                              color: Color(
                                                                  0xff7A70BA),
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          2)))),
                                                      Text("New",
                                                          style: appCss
                                                              .outfitMedium14
                                                              .textColor(
                                                                  const Color(
                                                                      0xff3D434A))),
                                                    ],
                                                  ),
                                                  Text("86",
                                                      style: appCss
                                                          .outfitMedium14
                                                          .textColor(
                                                              const Color(
                                                                  0xff8D8D8D)))
                                                ]),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(children: [
                                                    Container(
                                                        margin: const EdgeInsets
                                                            .only(right: 15),
                                                        width: 10,
                                                        height: 10,
                                                        decoration: const BoxDecoration(
                                                            color: Color(
                                                                0xff48A3D7),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            2)))),
                                                    Text("Waiting for approval",
                                                        style: appCss
                                                            .outfitMedium14
                                                            .textColor(
                                                                const Color(
                                                                    0xff3D434A)))
                                                  ]),
                                                  Text("210",
                                                      style: appCss
                                                          .outfitMedium14
                                                          .textColor(
                                                              const Color(
                                                                  0xff8D8D8D)))
                                                ]),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(children: [
                                                    Container(
                                                        margin: const EdgeInsets
                                                            .only(right: 15),
                                                        width: 10,
                                                        height: 10,
                                                        decoration: const BoxDecoration(
                                                            color: Color(
                                                                0xffD77748),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            2)))),
                                                    Text("Assigned",
                                                        style: appCss
                                                            .outfitMedium14
                                                            .textColor(
                                                                const Color(
                                                                    0xff3D434A)))
                                                  ]),
                                                  Text("95",
                                                      style: appCss
                                                          .outfitMedium14
                                                          .textColor(
                                                              const Color(
                                                                  0xff8D8D8D)))
                                                ]),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(children: [
                                                    Container(
                                                        margin: const EdgeInsets
                                                            .only(right: 15),
                                                        width: 10,
                                                        height: 10,
                                                        decoration: const BoxDecoration(
                                                            color: Color(
                                                                0xffC95E9E),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            2)))),
                                                    Text("Cancelled",
                                                        style: appCss
                                                            .outfitMedium14
                                                            .textColor(
                                                                const Color(
                                                                    0xff3D434A)))
                                                  ]),
                                                  Text("37",
                                                      style: appCss
                                                          .outfitMedium14
                                                          .textColor(
                                                              const Color(
                                                                  0xff8D8D8D)))
                                                ])
                                          ]))
                                ])
                          ])))
                ]),
                Row(children: [
                  Expanded(
                      child: Container(
                          margin: const EdgeInsets.all(25),
                          height: dashboardPvr.heightMediaQuery(context),
                          width: dashboardPvr.widthMediaQuery(context),
                          decoration: BoxDecoration(
                              color: appColor(context).appTheme.whiteColor,
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(17))),
                          child: Table(
                            defaultColumnWidth: FixedColumnWidth(120.0),
                            children: const [
                              TableRow(children: [
                                Column(children: [
                                  Text('Files Name',
                                      style: TextStyle(fontSize: 20.0))
                                ]),
                                Column(children: [
                                  Text('File Type',
                                      style: TextStyle(fontSize: 20.0))
                                ]),
                                Column(children: [
                                  Text('Date',
                                      style: TextStyle(fontSize: 20.0))
                                ])
                              ]),
                              TableRow(children: [
                                Column(children: [Text('Javatpoint')]),
                                Column(children: [Text('Flutter')]),
                                Column(children: [Text('5*')])
                              ]),
                              TableRow(children: [
                                Column(children: [Text('Javatpoint')]),
                                Column(children: [Text('MySQL')]),
                                Column(children: [Text('5*')]),
                              ]),
                              TableRow(children: [
                                Column(children: [Text('Javatpoint')]),
                                Column(children: [Text('ReactJS')]),
                                Column(children: [Text('5*')]),
                              ]),
                            ],
                          ))),
                  Expanded(
                      child: Container(
                          child: Row(
                            children: const [],
                          ),
                          margin: const EdgeInsets.all(25),
                          height: dashboardPvr.heightMediaQuery(context),
                          width: dashboardPvr.widthMediaQuery(context),
                          decoration: BoxDecoration(
                              color: appColor(context).appTheme.whiteColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(17)))))
                ])
              ]))));
    });
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}
