import 'package:kitchenkiosk/app/ui/theme/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const headerStyle = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
const titleStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
const titleStyle2 = TextStyle(fontSize: 16, color: Colors.black45);
const subtitleStyle = TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
const infoStyle = TextStyle(fontSize: 12, color: Colors.black54);

//Decoration
final roundedRectangle12 = RoundedRectangleBorder(
  borderRadius: BorderRadiusDirectional.circular(12),
);

final roundedRectangle4 = RoundedRectangleBorder(
  borderRadius: BorderRadiusDirectional.circular(4),
);

const roundedRectangle40 = RoundedRectangleBorder(
  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
);

TextStyle googlenumber = GoogleFonts.philosopher(
    fontSize: 30, fontWeight: FontWeight.w400, color: AppColors.black);

TextStyle googlebig = GoogleFonts.overlock(
  fontSize: 100,
  fontWeight: FontWeight.w600,
  color: AppColors.red,
  letterSpacing: .5,
);

TextStyle googletitle = GoogleFonts.montserrat(
  fontSize: 50,
  fontWeight: FontWeight.w600,
  color: AppColors.black,
  letterSpacing: .5,
);

TextStyle googleorder = GoogleFonts.overlock(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: AppColors.white,
  letterSpacing: .5,
);

TextStyle google(int fz) => GoogleFonts.overlock(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
      letterSpacing: .5,
    );
