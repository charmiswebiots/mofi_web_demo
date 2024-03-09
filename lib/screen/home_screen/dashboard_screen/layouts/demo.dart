import 'package:web_demo/screen/home_screen/dashboard_screen/layouts/my_flexibility_item.dart';
import '../../../../config.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultipleWidgetReturn(contentPadding: true,
          wrapAlignment: WrapAlignment.start,wrapCrossAlignment: WrapCrossAlignment.start,
          children: [
        Container(color: Colors.black,height: 100,)
      ]),
    );
  }
}
