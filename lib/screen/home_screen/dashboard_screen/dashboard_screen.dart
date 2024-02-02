import 'package:provider/provider.dart';
import 'package:web_demo/config.dart';
import 'package:web_demo/provider/dashboard_provider.dart';
import 'package:web_demo/responsive.dart';
import 'package:web_demo/widgets/common_drawer.dart';
import '../../../widgets/common_app_bar.dart';

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
              backgroundColor: const Color(0xffF4F7F9),
              body: SingleChildScrollView(
                child: Column(children: [
                  const CommonAppBar(),
                  if(Responsive.isDesktop(context))

                  Container(
                      margin: const EdgeInsets.all(25),
                      height: dashboardPvr.heightMediaQuery(context),
                      width: dashboardPvr.widthMediaQuery(context),
                      decoration: BoxDecoration(
                          color: appColor(context).appTheme.whiteColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(17)))),
                ]),
              )));
    });
  }
}
