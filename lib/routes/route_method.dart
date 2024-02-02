//app file
import '../config.dart';
import '../screen/home_screen/home_screen.dart';


class AppRoute {

  Map<String, Widget Function(BuildContext)> route = {
    routeName.splash :(p0) => const HomeScreen(),
    // routeName.homeScreen :(p0) => const HomeScreen(),
    // routeName.login :(p0) => EmailLoginScreen(),
    // routeName.loginWithPhone :(p0) => LoginWithPhoneScreen(),

  };


}
