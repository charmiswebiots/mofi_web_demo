enum ScreenSizeType {
  largeMobile(500, "largeMobile"),
  tablet(768, "tablet"),
  desktop(1400, "desktop");

  static List<ScreenSizeType> list = [
    ScreenSizeType.largeMobile,
    ScreenSizeType.tablet,
    ScreenSizeType.desktop,
  ];

  bool get isLargeMobile => this == ScreenSizeType.largeMobile;

  bool get isTable => this == ScreenSizeType.tablet;

  bool get isDesktop => this == ScreenSizeType.desktop;

  final int screenSize;
  final String screenDisplayName;

  const ScreenSizeType(this.screenSize, this.screenDisplayName);
}


//   Widget buildDemooo() {
//     int itemCount;
//     double itemHeight;
//     Widget? child;
//
//     if (screenWidth >= 1200) {
//       // Desktop View
//       itemCount = 5;
//       itemHeight = MediaQuery.of(context).size.height * 0.1;
//     } else if (screenWidth >= 600) {
//       // Tablet View
//       itemCount = 3;
//       itemHeight = MediaQuery.of(context).size.height * 0.08;
//     } else {
//       // Mobile View
//       itemCount = 2;
//       itemHeight = MediaQuery.of(context).size.height * 0.06;
//     }
//
//     return Container(
//       height: itemCount * itemHeight,
//       child: child,
//     );
//   }
// }
//
// enum ScreenWidthType {
//   Small,
//   Medium,
//   Large,
// }
//
//
//
//
// class DisplayWidth {
//   final double value;
//
//   DisplayWidth(this.value);
//
//   factory DisplayWidth.fromString(String value) {
//     return DisplayWidth(double.tryParse(value) ?? 0.0);
//   }
// }
//
// class SingleWidget {
//   final String text;
//
//   SingleWidget(this.text);
// }
//
// class MyResponsive extends StatelessWidget {
//   final Widget Function(BuildContext context, BoxConstraints constraints,
//       ScreenWidthType screenMediaType) builder;
//
//   const MyResponsive({Key? key, required this.builder}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         double width = constraints.maxWidth;
//         ScreenWidthType screenMediaType = _getScreenWidthType(width);
//
//         return builder(context, constraints, screenMediaType);
//       },
//     );
//   }
//
//   ScreenWidthType _getScreenWidthType(double width) {
//     if (width < 600) {
//       return ScreenWidthType.Small;
//     } else if (width < 1200) {
//       return ScreenWidthType.Medium;
//     } else {
//       return ScreenWidthType.Large;
//     }
//   }
// }
// extension IterableIndexed<E> on Iterable<E> {
//   Iterable<T> mapIndexed<T>(T Function(int index, E item) f) sync* {
//     var index = 0;
//     for (var item in this) {
//       yield f(index, item);
//       index++;
//     }
//   }
// }
// class MultipleWidgetReturn extends StatelessWidget {
//   final List<SingleWidget> children;
//   final WrapAlignment wrapAlignment;
//   final WrapCrossAlignment wrapCrossAlignment;
//   final WrapAlignment runAlignment;
//   final bool contentPadding;
//   final double? space, runSpacing;
//
//   const MultipleWidgetReturn({
//     Key? key,
//     required this.children,
//     this.wrapAlignment = WrapAlignment.start,
//     this.runAlignment = WrapAlignment.start,
//     this.contentPadding = true,
//     this.space,
//     this.runSpacing = 0.0,
//     required this.wrapCrossAlignment,
//   }) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return MyResponsive(
//       builder:
//           (BuildContext context, BoxConstraints constraints, screenMediaType) {
//         double width = constraints.maxWidth;
//         List<Widget> list = [];
//
//         for (List<SingleWidget> lCol in getAllWidget(screenMediaType)) {
//           list.addAll(lCol.mapIndexed((index, col) => Container(
//                 width: getScreenWidth(
//                   width,
//                   1,
//                   // Adjust as needed, or use col.width[screenMediaType] if applicable
//                   lCol.length,
//                   space ?? 0.0,
//                 ),
//                 padding: getPadding(index, lCol.length),
//                 child: Container(),
//               )));
//         }
//
//         return Wrap(
//           crossAxisAlignment: wrapCrossAlignment,
//           alignment: wrapAlignment,
//           runAlignment: runAlignment,
//           runSpacing: runSpacing ?? 0.0,
//           spacing: space ?? 0.0,
//           children: list,
//         );
//       },
//     );
//   }
//
//   double getScreenWidth(double width, int flex, int length, double spacing) {
//     return (width - (length - 1) * spacing) / length;
//   }
//
//   EdgeInsetsGeometry getPadding(int index, int length) {
//     if (contentPadding) {
//       return EdgeInsets.symmetric(horizontal: (space ?? 0.0) / 2);
//     } else {
//       return EdgeInsets.fromLTRB(
//         index == 0 ? 0 : (space ?? 0.0) / 2,
//         0,
//         index == length - 1 ? 0 : (space ?? 0.0) / 2,
//         0,
//       );
//     }
//   }
//
//   List<List<SingleWidget>> getAllWidget(ScreenWidthType screenMediaType) {
//     if (screenMediaType == ScreenWidthType.Small) {
//       return [
//         [SingleWidget('Small 1'), SingleWidget('Small 2')],
//         [SingleWidget('Small 3'), SingleWidget('Small 4')],
//       ];
//     } else if (screenMediaType == ScreenWidthType.Medium) {
//       return [
//         [SingleWidget('Medium 1'), SingleWidget('Medium 2')],
//         [SingleWidget('Medium 3')],
//       ];
//     } else {
//       return [
//         [SingleWidget('Large 1'), SingleWidget('Large 2')],
//       ];
//     }
//   }
// }
//
