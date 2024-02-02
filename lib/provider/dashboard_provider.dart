import 'package:flutter/cupertino.dart';

class DashboardProvider extends ChangeNotifier {

  heightMediaQuery(context) {
    double height = MediaQuery.of(context).size.height;
    return height;
  }

  widthMediaQuery(context) {
    double width = MediaQuery.of(context).size.width;
    return width;
  }

}
