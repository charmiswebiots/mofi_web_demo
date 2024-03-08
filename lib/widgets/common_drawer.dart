import 'package:provider/provider.dart';
import '../config.dart';
import '../provider/drawer_provider.dart';
import '../responsive.dart';

class CommonDrawer extends StatefulWidget {
  final Widget? body;

  const CommonDrawer({Key? key, this.body}) : super(key: key);

  @override
  State<CommonDrawer> createState() => _CommonDrawerState();
}

class _CommonDrawerState extends State<CommonDrawer>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Consumer<DrawerProvider>(builder: (context, drawerPvr, child) {
      return Scaffold(
          body: Row(children: [
        if (Responsive.isDesktop(context))
          Drawer(
              width: 250,
              shape:
                  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              backgroundColor: const Color(0xff2A3650),
              child: drawerPvr.buildDesktopDrawer(context)),
        if (Responsive.isTablet(context))
          Drawer(
              width: 60,
              shape:
                  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              backgroundColor: const Color(0xff2A3650),
              child: drawerPvr.buildTabletDrawer(context)),
        Expanded(
            child: Column(children: [
              drawerPvr.buildAppBar(context),
          Expanded(child: Container(child: widget.body))
        ]))
      ]));
    });
  }

}
