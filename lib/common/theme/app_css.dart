import 'dart:ui';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';
part 'scale.dart';


FontWeight thin = FontWeight.w100;
FontWeight extraLight = FontWeight.w200;
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.normal;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
FontWeight extraThickBold = FontWeight.bold;

//lexend font

TextStyle lexendFont({double? fontsize, fontWeight}) =>
    GoogleFonts.lexend(fontSize: fontsize, fontWeight: fontWeight);

//outfit font
 TextStyle outfit({double? fontsize, fontWeight}) =>
     GoogleFonts.outfit(fontSize: fontsize, fontWeight: fontWeight);

class AppCss {

//Text Style outfit extra bold
  TextStyle outfitExtraBold70 = outfit( fontWeight: extraBold,fontsize:FontSizes.f70);
  TextStyle outfitExtraBold65 = outfit( fontWeight:extraBold ,fontsize:FontSizes.f65);
  TextStyle outfitExtraBold60 = outfit( fontWeight: extraBold,fontsize:FontSizes.f60);
  TextStyle outfitExtraBold40 = outfit( fontWeight: extraBold,fontsize:FontSizes.f40);
  TextStyle outfitExtraBold20 = outfit( fontWeight: extraBold,fontsize:FontSizes.f20);
  TextStyle outfitExtraBold25 = outfit( fontWeight:extraBold ,fontsize:FontSizes.f25);
  TextStyle outfitExtraBold30 = outfit( fontWeight: extraBold,fontsize:FontSizes.f30);

  //Text Style outfit bold
  TextStyle outfitBlack28 = outfit(fontWeight: black,fontsize:FontSizes.f28);
  TextStyle outfitBlack24 = outfit(fontWeight: black,fontsize:FontSizes.f24);
  TextStyle outfitBlack20 = outfit(fontWeight: black,fontsize:FontSizes.f20);
  TextStyle outfitBlack18 = outfit(fontWeight: black,fontsize:FontSizes.f18);
  TextStyle outfitBlack16 = outfit(fontWeight: black,fontsize:FontSizes.f16);
  TextStyle outfitBlack14 = outfit(fontWeight: black,fontsize:FontSizes.f14);


  //Text Style outfit bold
  TextStyle outfitExtraBold22 = outfit(fontWeight: extraBold,fontsize:FontSizes.f22);
  TextStyle outfitExtraBold18 = outfit(fontWeight: extraBold,fontsize:FontSizes.f18);
  TextStyle outfitExtraBold16 = outfit(fontWeight: extraBold,fontsize:FontSizes.f16);
  TextStyle outfitExtraBold14 = outfit(fontWeight: extraBold,fontsize:FontSizes.f14);
  TextStyle outfitExtraBold12 = outfit(fontWeight: extraBold,fontsize:FontSizes.f12);

  //Text Style semi outfit bold
  TextStyle outfitBold50 = outfit(fontWeight: bold,fontsize:FontSizes.f50);
  TextStyle outfitBold38 = outfit(fontWeight: bold,fontsize:FontSizes.f38);
  TextStyle outfitBold35 = outfit(fontWeight: bold,fontsize:FontSizes.f35);
  TextStyle outfitBold24 = outfit(fontWeight: bold,fontsize:FontSizes.f24);
  TextStyle outfitBold20 = outfit(fontWeight: bold,fontsize:FontSizes.f20);
  TextStyle outfitBold18 = outfit(fontWeight: bold,fontsize:FontSizes.f18);
  TextStyle outfitBold16 = outfit(fontWeight: bold,fontsize:FontSizes.f16);
  TextStyle outfitBold15 = outfit(fontWeight: bold,fontsize:FontSizes.f15);
  TextStyle outfitBold17 = outfit(fontWeight: bold,fontsize:FontSizes.f17);
  TextStyle outfitBold14 = outfit(fontWeight: bold,fontsize:FontSizes.f14);
  TextStyle outfitBold12 = outfit(fontWeight: bold,fontsize:FontSizes.f12);
  TextStyle outfitBold10 = outfit(fontWeight: bold,fontsize:FontSizes.f10);

  TextStyle outfitSemiBold24= outfit(fontWeight: semiBold,fontsize:FontSizes.f24);
  TextStyle outfitSemiBold22= outfit(fontWeight: semiBold,fontsize:FontSizes.f22);
  TextStyle outfitSemiBold20= outfit(fontWeight: semiBold,fontsize:FontSizes.f20);
  TextStyle outfitSemiBold18= outfit(fontWeight: semiBold,fontsize:FontSizes.f18);
  TextStyle outfitSemiBold16= outfit(fontWeight: semiBold,fontsize:FontSizes.f16);
  TextStyle outfitSemiBold15= outfit(fontWeight: semiBold,fontsize:FontSizes.f15);
  TextStyle outfitSemiBold13= outfit(fontWeight: semiBold,fontsize:FontSizes.f13);
  TextStyle outfitSemiBold14= outfit(fontWeight: semiBold,fontsize:FontSizes.f14);
  TextStyle outfitSemiBold12= outfit(fontWeight: semiBold,fontsize:FontSizes.f12);
  TextStyle outfitSemiBold10= outfit(fontWeight: semiBold,fontsize:FontSizes.f10);


  //Text Style outfit medium
  TextStyle outfitMedium28 = outfit(fontWeight: medium,fontsize:FontSizes.f28);
  TextStyle outfitMedium22 = outfit(fontWeight: medium,fontsize:FontSizes.f22);
  TextStyle outfitMedium21 = outfit(fontWeight: medium,fontsize:FontSizes.f21);
  TextStyle outfitMedium20 = outfit(fontWeight: medium,fontsize:FontSizes.f20);
  TextStyle outfitMedium18 = outfit(fontWeight: medium,fontsize:FontSizes.f18);
  TextStyle outfitMedium17 = outfit(fontWeight: medium,fontsize:FontSizes.f17);
  TextStyle outfitMedium16 = outfit(fontWeight: medium,fontsize:FontSizes.f16);
  TextStyle outfitMedium15 = outfit(fontWeight: medium,fontsize:FontSizes.f15);
  TextStyle outfitMedium14 = outfit(fontWeight: medium,fontsize:FontSizes.f14);
  TextStyle outfitMedium13 = outfit(fontWeight: medium,fontsize:FontSizes.f13);
  TextStyle outfitMedium12 = outfit(fontWeight: medium,fontsize:FontSizes.f12);
  TextStyle outfitMedium11 = outfit(fontWeight: medium,fontsize:FontSizes.f11);
  TextStyle outfitMedium10 = outfit(fontWeight: medium,fontsize:FontSizes.f10);

  //Text Style outfit regular
  TextStyle outfitRegular18 = outfit(fontWeight: regular,fontsize:FontSizes.f18);
  TextStyle outfitRegular16 = outfit(fontWeight: regular,fontsize:FontSizes.f16);
  TextStyle outfitRegular14 = outfit(fontWeight: regular,fontsize:FontSizes.f14);
  TextStyle outfitRegular13 = outfit(fontWeight: regular,fontsize:FontSizes.f13);
  TextStyle outfitRegular12 = outfit(fontWeight: regular,fontsize:FontSizes.f12);
  TextStyle outfitRegular11 = outfit(fontWeight: regular,fontsize:FontSizes.f11);


  TextStyle outfitLight16 = outfit(fontWeight: light,fontsize:FontSizes.f16);
  TextStyle outfitLight14 = outfit(fontWeight: light,fontsize:FontSizes.f14);
  TextStyle outfitLight12 = outfit(fontWeight: light,fontsize:FontSizes.f12);

  TextStyle lexendBold70 = lexendFont( fontWeight: bold,fontsize:FontSizes.f70);
  TextStyle lexendBold65 = lexendFont( fontWeight:bold ,fontsize:FontSizes.f65);
  TextStyle lexendBold60 = lexendFont( fontWeight: bold,fontsize:FontSizes.f60);
  TextStyle lexendBold40 = lexendFont( fontWeight:bold ,fontsize:FontSizes.f40);
  TextStyle lexendBold38 = lexendFont( fontWeight:bold ,fontsize:FontSizes.f38);
  TextStyle lexendBold25 = lexendFont( fontWeight:bold ,fontsize:FontSizes.f25);
  TextStyle lexendBold26 = lexendFont( fontWeight:bold ,fontsize:FontSizes.f26);
  TextStyle lexendBold27 = lexendFont( fontWeight:bold ,fontsize:FontSizes.f27);
  TextStyle lexendBold28 = lexendFont( fontWeight:bold ,fontsize:FontSizes.f28);
  TextStyle lexendBold18 = lexendFont( fontWeight:bold ,fontsize:FontSizes.f18);

  TextStyle lexendSemiBold45 = lexendFont(fontWeight: semiBold,fontsize:FontSizes.f45);
  TextStyle lexendSemiBold26 = lexendFont(fontWeight: semiBold,fontsize:FontSizes.f26);
  TextStyle lexendSemiBold23 = lexendFont(fontWeight: semiBold,fontsize:FontSizes.f23);
  TextStyle lexendSemiBold16 = lexendFont(fontWeight: semiBold,fontsize:FontSizes.f16);
  TextStyle lexendSemiBold12 = lexendFont(fontWeight: semiBold,fontsize:FontSizes.f12);

}
