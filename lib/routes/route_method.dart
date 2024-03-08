//app file
import 'package:web_demo/screen/auth_screen/login_screen/login_screen.dart';
import 'package:web_demo/screen/home_screen/dashboard_screen/dashboard_screen.dart';
import '../config.dart';

class AppRoute {

  Map<String, Widget Function(BuildContext)> route = {
    routeName.splash :(p0) => const DashBoardScreen(),
    routeName.loginScreen :(p0) => const LoginScreen(),



  };


}
