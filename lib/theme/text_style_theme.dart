import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/theme/theme.dart';

// Text Theme
class Style {
  TextStyle title = GoogleFonts.poppins().copyWith(
    fontSize: AppSetting.setFontSize(36),
    color: MyTheme.color.black,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  TextStyle semiTitle = GoogleFonts.poppins().copyWith(
    fontSize: AppSetting.setFontSize(36),
    color: MyTheme.color.black,
    fontWeight: FontWeight.w300,
  );

  TextStyle subtitle = GoogleFonts.poppins().copyWith(
    fontSize: AppSetting.setFontSize(32),
    color: MyTheme.color.black,
  );

  TextStyle subtitleLight = GoogleFonts.poppins().copyWith(
    fontSize: AppSetting.setFontSize(32),
    color: MyTheme.color.black,
    fontWeight: FontWeight.w100,
  );

}