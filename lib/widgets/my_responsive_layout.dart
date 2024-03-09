import 'package:flutter/material.dart';
import 'package:web_demo/screen/home_screen/dashboard_screen/layouts/get_screen_size_width.dart';
import '../config.dart';
import '../screen/home_screen/dashboard_screen/layouts/my_flexibility.dart';

class MyResponsiveLayout extends StatelessWidget {
  final Widget Function(BuildContext context, BoxConstraints constraints,
      ScreenSizeType screenSizeType) builder;

  const MyResponsiveLayout({Key? key, required this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        var screenSizeType1 =
        ScreenSizeWidth.getTypeFromWidth(MediaQuery
            .of(context)
            .size
            .width);

        return builder(context, constraints, screenSizeType1);
      },
    );
  }
}


// List<List<MultipleWidgetReturn>> getGrouped(ScreenSizeWidth type) {
//   List<List<MultipleWidgetReturn>> list = [];
//   var flexCount = 0;
//   List<MultipleWidgetReturn> iList = [];
//   for (MultipleWidgetReturn col in children) {
//     if (col.display [type]!.isBlock) {
//       int flex col.flex[type]!;
//       if (flexCount + flex <= 12) {
//         iList.add(col);
//         flexCount += flex;
//       } else {
//         list.add(iList);
//         iList = [];
//         iList.add(col);
//         flexCount = 0;
//       }
//     }
//   }
//   if (iList.isNotEmpty) {
//     list.add(iList);
//   }
//   return list;
// }