import 'package:flutter/cupertino.dart';
import 'package:web_demo/widgets/my_responsive_layout.dart';

class MultipleWidgetReturn extends StatelessWidget {
  final List<Widget> children;
  final WrapAlignment? wrapAlignment;
  final WrapCrossAlignment? wrapCrossAlignment;
  final WrapAlignment? runAlignment;
  final bool? contentPadding;
  final double? space, runSpacing;

  const MultipleWidgetReturn(
      {super.key,
      required this.children,
      this.wrapAlignment = WrapAlignment.start,
      this.wrapCrossAlignment = WrapCrossAlignment.start,
      this.runAlignment = WrapAlignment.start,
      this.contentPadding = true,
      this.space,
      this.runSpacing});

  @override
  Widget build(BuildContext context) {
    return MyResponsiveLayout(
        builder: (context, constraints, screenSizeType) => Container());
  }
}
