import 'package:provider/provider.dart';
import 'package:web_demo/config.dart';
import 'package:web_demo/controllers/controller.dart';
import 'package:web_demo/provider/dashboard_provider.dart';
import 'package:web_demo/provider/loading_provider.dart';

import 'common/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, AsyncSnapshot<SharedPreferences> snapData) {
          if (snapData.hasData) {
            return MultiProvider(
                providers: [
                  ChangeNotifierProvider(
                      create: (_) => ThemeService(snapData.data!)),
                  ChangeNotifierProvider(create: (_) => LoadingProvider()),
                  ChangeNotifierProvider(create: (_) => DashboardProvider()),
                  ChangeNotifierProvider(create: (_) => Controller()),
                ],
                child: Consumer<ThemeService>(builder: (context, theme, child) {
                  // log("THEME ${theme.isDarkMode}");
                  return MaterialApp(
                      title: 'Flutter Demo',
                      debugShowCheckedModeBanner: false,
                      theme: AppTheme.fromType(ThemeType.light).themeData,
                      darkTheme: AppTheme.fromType(ThemeType.dark).themeData,
                      themeMode: theme.theme,
                      initialRoute: "/",
                      routes: appRoute.route);
                }));
          } else {
            return MaterialApp(
                theme: AppTheme.fromType(ThemeType.light).themeData,
                darkTheme: AppTheme.fromType(ThemeType.dark).themeData,
                themeMode: ThemeMode.light,
                debugShowCheckedModeBanner: true);
          }
        });
  }
}
