import 'package:flutter/cupertino.dart';

import '../screen/home_screen/dashboard_screen/dashboard_screen.dart';

class DashboardProvider extends ChangeNotifier {
  heightMediaQuery(context) {
    double height = MediaQuery.of(context).size.height;
    return height;
  }

  widthMediaQuery(context) {
    double width = MediaQuery.of(context).size.width;
    return width;
  }

  final List<ChartData> chartData = [
    ChartData('David', 30, const Color(0xff7A70BA)),
    ChartData('Steve', 25, const Color(0xffC95E9E)),
    ChartData('Jack', 35, const Color(0xffD77748)),
    ChartData('Others', 55, const Color(0xff48A3D7)),
  ];


}
