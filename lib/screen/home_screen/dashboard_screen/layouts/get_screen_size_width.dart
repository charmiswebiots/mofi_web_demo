import 'my_flexibility.dart';


class ScreenSizeWidth {
  static int columns = 12;
  static double spacing = 24;

  static ScreenSizeType getTypeFromWidth(double width) {
    for (var i in ScreenSizeType.values) {
      if (width < i.screenSize) {
        return i;
      }
    }
    return ScreenSizeType.desktop;
  }

  static Map<ScreenSizeType, T> getFullScreenLength<T>(
      Map<ScreenSizeType, T>? map, T defaultValue,
      [bool reversed = false]) {
    Map<ScreenSizeType, T> d = {};
    map ??= {};
    List list = ScreenSizeType.values;

    if (reversed) {
      list = list.reversed.toList();
    }

    for (var i = 0; i < list.length; i++) {
      d[list[i]] =
          map[list[i]] ?? (i > 0 ? d[list[i - 1]] : null) ?? defaultValue;
    }
    return d;
  }

  static Map<ScreenSizeType, int> getFlexedFromString(String? string) {
    string ??= "";
    Map<ScreenSizeType, int> d = {};

    List<String> data = string.split(" ");
    for (String item in data) {
      for (var type in ScreenSizeType.values) {
        if (item.contains(type.screenDisplayName)) {
          int? sSize = int.tryParse(item.replaceAll("${type.screenSize}-", ""));
          if (sSize != null) {
            d[type] = sSize;
            break;
          }
        }
      }
    }
    return getFullScreenLength(d, ScreenSizeWidth.columns);
  }

  static Map<ScreenSizeType, String> getDisplayFromString(String? string) {
    string ??= "";
    Map<ScreenSizeType, String> d = {};

    List<String> data = string.split(" ");
    for (String item in data) {
      for (var type in ScreenSizeType.values) {
        if (item.contains(type.screenDisplayName)) {
          var displayScreen;
          String displayType = displayScreen
              .fromString(item.replaceAll("${type.screenDisplayName}-", ""));

          d[type] = displayType;
          break;
        }
      }
    }
    return d;
    //return getFullScreenLength(d, ScreenSizeWidth.block);
  }

  static Map<ScreenSizeType, int> getWidthData(String? string) {
    string ??= "";
    Map<ScreenSizeType, int> d = {};

    List<String> data = string.split(" ");
    for (String item in data) {
      for (var type in ScreenSizeType.values) {
        if (item.contains(type.screenDisplayName)) {
          int? width =
          int.tryParse(item.replaceAll("${type.screenDisplayName}-", ""));
          if (width != null) {
            d[type] = width;
            break;
          }
        }
      }
    }

    return getFullScreenLength(d, ScreenSizeWidth.columns);
  }

  static Map<ScreenSizeType, String> getWidthDisplay(String? string) {
    string ??= "";
    Map<ScreenSizeType, String> d = {};

    List<String> data = string.split(" ");
    for (String item in data) {
      for (var type in ScreenSizeType.values) {
        if (item.contains(type.screenDisplayName)) {
          var displayScreen;
          d[type] = displayScreen
              .fromString(item.replaceAll("${type.screenDisplayName}-", ""));
          break;
        }
      }
    }
    return d;
    // return getFullScreenLength(d, DisplayWidth.block);
  }
}