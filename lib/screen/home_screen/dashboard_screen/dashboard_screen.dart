import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:web_demo/common/extension/spacing.dart';
import 'package:web_demo/common/extension/text_style_extensions.dart';
import 'package:web_demo/common/extension/widget_extension.dart';
import 'package:web_demo/config.dart';
import 'package:web_demo/provider/dashboard_provider.dart';
import 'package:web_demo/widgets/common_drawer.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  var selectedDate = DateTime.now();

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
          child: CommonDrawer(
              body: Scaffold(
                  backgroundColor: const Color(0xffF4F7F9),
                  body: SingleChildScrollView(
                      child: Column(children: [
                    Row(children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                              margin: const EdgeInsets.all(25),
                              width: dashboardPvr.widthMediaQuery(context),
                              decoration: BoxDecoration(
                                  color: appColor(context).appTheme.whiteColor,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(17))),
                              child: Column(children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Shifts Overview",
                                          style: appCss.outfitSemiBold18
                                              .textColor(
                                                  const Color(0xff3D434A))),
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
                                                      .textColor(const Color(
                                                          0xff8D8D8D))),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                                        color: const Color(
                                                            0xffF4F7F9),
                                                        width: 8)))),
                                        SfCircularChart(
                                            series: <CircularSeries>[
                                              DoughnutSeries<ChartData, String>(
                                                  innerRadius: '90%',
                                                  explode: true,
                                                  radius: '58%',
                                                  explodeOffset: '5%',
                                                  explodeAll: true,
                                                  animationDuration:
                                                      AppRadius.r2,
                                                  dataSource: chartData,
                                                  xValueMapper:
                                                      (ChartData data, _) =>
                                                          data.x,
                                                  yValueMapper:
                                                      (ChartData data, _) =>
                                                          data.y,
                                                  cornerStyle:
                                                      CornerStyle.bothCurve)
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
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "\$ 34,098",
                                                          style: appCss
                                                              .outfitSemiBold20
                                                              .textColor(
                                                                  const Color(
                                                                      0xff3D434A))),
                                                      Text(
                                                          textAlign:
                                                              TextAlign.center,
                                                          "Total Overview",
                                                          style: appCss
                                                              .outfitMedium14
                                                              .textColor(
                                                                  const Color(
                                                                      0xff8D8D8D)))
                                                    ])))
                                      ]),
                                      SizedBox(
                                          height: 100,
                                          width: 300,
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                                  const EdgeInsets.only(
                                                                      right:
                                                                          15),
                                                              width: 10,
                                                              height: 10,
                                                              decoration: const BoxDecoration(
                                                                  color: Color(
                                                                      0xff7A70BA),
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
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
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 15),
                                                            width: 10,
                                                            height: 10,
                                                            decoration: const BoxDecoration(
                                                                color: Color(
                                                                    0xff48A3D7),
                                                                borderRadius: BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            2)))),
                                                        Text(
                                                            "Waiting for approval",
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
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 15),
                                                            width: 10,
                                                            height: 10,
                                                            decoration: const BoxDecoration(
                                                                color: Color(
                                                                    0xffD77748),
                                                                borderRadius: BorderRadius
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
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 15),
                                                            width: 10,
                                                            height: 10,
                                                            decoration: const BoxDecoration(
                                                                color: Color(
                                                                    0xffC95E9E),
                                                                borderRadius: BorderRadius
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
                                                    ])]))])
                              ])))]),
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
                                  defaultColumnWidth:
                                      const FixedColumnWidth(120.0),
                                  children: [
                                    TableRow(children: [
                                      Column(children: [
                                        Checkbox(
                                            activeColor: Colors.green,
                                            focusColor: Colors.blue,
                                            checkColor: Colors.yellow,
                                            hoverColor: Colors.green,
                                            value: false,
                                            onChanged: (value) {})
                                      ]),
                                      const Column(children: [
                                        Text('Files Name',
                                            style: TextStyle(fontSize: 20.0))
                                      ]),
                                      const Column(children: [
                                        Text('File Type',
                                            style: TextStyle(fontSize: 20.0))
                                      ]),
                                      const Column(children: [
                                        Text('Date',
                                            style: TextStyle(fontSize: 20.0))
                                      ])
                                    ]),
                                    TableRow(children: [
                                      Column(children: [
                                        Checkbox(
                                            activeColor: Colors.green,
                                            focusColor: Colors.blue,
                                            checkColor: Colors.yellow,
                                            hoverColor: Colors.green,
                                            value: false,
                                            onChanged: (value) {})
                                      ]),
                                      const Column(
                                          children: [Text('Javatpoint')]),
                                      const Column(children: [Text('Flutter')]),
                                      const Column(
                                          children: [Text('29 Feb 2024')])
                                    ]),
                                    TableRow(children: [
                                      Column(children: [
                                        Checkbox(
                                            activeColor: Colors.green,
                                            focusColor: Colors.blue,
                                            checkColor: Colors.yellow,
                                            hoverColor: Colors.green,
                                            value: true,
                                            onChanged: (value) {})
                                      ]),
                                      const Column(
                                          children: [Text('Javatpoint')]),
                                      const Column(children: [Text('MySQL')]),
                                      const Column(
                                          children: [Text('29 Feb 2024')]),
                                    ]),
                                    TableRow(children: [
                                      Column(children: [
                                        Checkbox(
                                            activeColor: Colors.green,
                                            focusColor: Colors.blue,
                                            checkColor: Colors.yellow,
                                            hoverColor: Colors.green,
                                            value: true,
                                            onChanged: (value) {})
                                      ]),
                                      const Column(
                                          children: [Text('Javatpoint')]),
                                      const Column(children: [Text('ReactJS')]),
                                      const Column(
                                          children: [Text('29 Feb 2024')]),
                                    ])
                                  ])))
                    ])
                  ])))));
    });
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;
}
