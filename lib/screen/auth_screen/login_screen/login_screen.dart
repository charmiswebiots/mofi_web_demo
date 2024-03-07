import 'package:dotted_border/dotted_border.dart';
import 'package:provider/provider.dart';
import 'package:web_demo/common/extension/widget_extension.dart';
import '../../../common/assets/index.dart';
import '../../../common/extension/spacing.dart';
import '../../../config.dart';
import '../../../provider/login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(builder: (context, loginPvr, child) {
      return Scaffold(
          body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(eImageAssets.loginBg))),
              child: Stack(children: [
                Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Image.asset(eImageAssets.loginLogo,
                              width: 100, height: 35)
                          .marginOnly(bottom: Insets.i30),
                      Container(
                          padding: const EdgeInsets.all(40),
                          width: 450,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(AppRadius.r10)),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color.fromRGBO(8, 21, 66, 0.05),
                                    blurRadius: 8,
                                    offset: Offset(0, 4),
                                    spreadRadius: 0)
                              ],
                              color: appColor(context).appTheme.whiteBg),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(appFonts.signInToAccount,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'outfit',
                                        letterSpacing: 0.6)),
                                Text(appFonts.enterYourEmailPassword,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'outfit',
                                        color: Color(0xff898989),
                                        letterSpacing: 0.6)),
                                const VSpace(Insets.i25),
                                Text(appFonts.emailAddress,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'outfit',
                                            color: Color(0xff3D434A),
                                            letterSpacing: 0.6))
                                    .padding(bottom: 4),
                                DottedBorder(
                                    color: appColor(context).appTheme.primary,
                                    borderType: BorderType.RRect,
                                    strokeWidth: 1,
                                    radius: const Radius.circular(6),
                                    padding: EdgeInsets.zero,
                                    borderPadding: EdgeInsets.zero,
                                    child: const ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6)),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              hintText: "Test@gmail.com",
                                              border: InputBorder.none,
                                              hintStyle: TextStyle(),
                                              filled: true,
                                              hoverColor: Colors.transparent,
                                              fillColor: Color(0xfff3f3ff)),
                                        ))).paddingOnly(bottom: 12),
                                Text(appFonts.password,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'outfit',
                                            color: Color(0xff3D434A),
                                            letterSpacing: 0.6))
                                    .padding(bottom: 4),
                                DottedBorder(
                                    color: appColor(context).appTheme.primary,
                                    borderType: BorderType.RRect,
                                    strokeWidth: 1,
                                    radius: const Radius.circular(6),
                                    padding: EdgeInsets.zero,
                                    borderPadding: EdgeInsets.zero,
                                    child: ClipRRect(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(6)),
                                        child: TextField(
                                          obscureText: true,
                                          decoration: InputDecoration(
                                              hintText: "*********",
                                              suffixIconConstraints:
                                                  const BoxConstraints(
                                                      maxWidth: 50),
                                              suffixIcon: const Text('show')
                                                  .marginOnly(right: 10),
                                              border: InputBorder.none,
                                              filled: true,
                                              hoverColor: Colors.transparent,
                                              fillColor:
                                                  const Color(0xfff3f3ff)),
                                        ))).paddingOnly(bottom: 12),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            DottedBorder(
                                                    color: Colors.grey,
                                                    borderType:
                                                        BorderType.RRect,
                                                    strokeWidth: 1,
                                                    radius:
                                                        const Radius.circular(
                                                            3),
                                                    padding: EdgeInsets.zero,
                                                    borderPadding:
                                                        EdgeInsets.zero,
                                                    child: ClipRRect(
                                                        borderRadius:
                                                            const BorderRadius
                                                                .all(
                                                                Radius.circular(
                                                                    3)),
                                                        child: Container(
                                                            width: 15,
                                                            height: 15)))
                                                .marginOnly(right: 10),
                                            Text(appFonts.rememberPassword,
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontFamily: 'outfit',
                                                        color:
                                                            Color(0xff3D434A),
                                                        letterSpacing: 0.6))
                                                .padding(bottom: 4)
                                          ]),
                                      Text(appFonts.forgotPassword,
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'outfit',
                                                  color: Color(0xff3D434A),
                                                  letterSpacing: 0.6))
                                          .padding(bottom: 4)
                                    ]).marginOnly(bottom: 10),
                                Container(
                                    width: double.infinity,
                                    height: 35,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color:
                                            appColor(context).appTheme.primary,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(AppRadius.r6))),
                                    child: const Text("Sign In",
                                        style: TextStyle(
                                            fontFamily: 'outfit',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Colors.white))),

                                Row(children: [
                                  Text("Or Sign in with",style: TextStyle(
                                      fontFamily: 'outfit',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.75,
                                      color: Color(0xff212529))).opacity(0.75),
                                  Expanded(child: Divider(color: Color(0xfff3f3ff),thickness: 2,indent: 100,))
                                ],).marginOnly(top: 24)
                              ]))
                    ]))
              ])));
    });
  }
}
