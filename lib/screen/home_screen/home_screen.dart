import 'package:provider/provider.dart';
import 'package:web_demo/responsive.dart';
import 'package:web_demo/screen/home_screen/dashboard_screen/dashboard_screen.dart';
import 'package:web_demo/widgets/common_drawer.dart';
import '../../config.dart';
import '../../controllers/controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(drawer: CommonDrawer(),
            key: context.read<Controller>().scaffoldKey,
            backgroundColor: const Color(0xff2A3650),
            body: Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if(Responsive.isDesktop(context))
                    Expanded(
                        child: CommonDrawer()),
                  const Expanded(flex: 5, child: DashBoardScreen())
            ])));
  }
}