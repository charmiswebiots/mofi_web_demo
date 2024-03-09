import '../../../../config.dart';
import 'get_screen_size_width.dart';

class MyScreenSubItem extends StatelessWidget {
  final Widget child;
  final String? screenSize;
  final String? displayName;

  const MyScreenSubItem({
    Key? key,
    required this.child,
    this.screenSize,
    this.displayName,
  }) : super(key: key);

  Future<Map<dynamic, int>> get flex async =>
      ScreenSizeWidth.getFlexedFromString(screenSize ?? "");

  Future<Map<dynamic, String>> get display async =>
      ScreenSizeWidth.getDisplayFromString(displayName ?? "");

  @override
  Widget build(BuildContext context) {
    return child;
  }
}