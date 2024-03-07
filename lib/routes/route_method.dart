//app file
import 'package:web_demo/screen/auth_screen/login_screen/login_screen.dart';

import '../config.dart';
import '../screen/home_screen/home_screen.dart';


class AppRoute {

  Map<String, Widget Function(BuildContext)> route = {
    routeName.splash :(p0) => const LoginScreen(),
    routeName.loginScreen :(p0) => const LoginScreen(),



  };


}
