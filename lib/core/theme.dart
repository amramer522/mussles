import 'package:flutter/material.dart';

class AppTheme {
  static String fontFamily = "Sans";
  static const textLight = Color(0xff111111);
  static const primary = Color(0xff1F4690);
  static const divider = Color(0xffE3E7EC);
  static const disabledSwitch = Color(0xffEDF2F7);
  static const secondary = Color(0xffFE970F);
  static const success = Color(0xff00C566);
  static const warning = Color(0xffFACC15);
  static const error = Color(0xffFF4747);
  static const bgLight = Colors.white;
  static const bgDark = Color(0xff171725);

  static ThemeData get light => ThemeData(
        useMaterial3: true,
        fontFamily: fontFamily,
        dividerColor: divider,
        switchTheme: SwitchThemeData(
          trackColor: MaterialStateProperty.resolveWith ((Set  states) {
            if (states.contains(MaterialState.selected)) {
              return primary;
            }
            return disabledSwitch;
          })
        ),
        dividerTheme: DividerThemeData(color: divider),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: primary,
          unselectedItemColor: Color(0xff111111),
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
          unselectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        appBarTheme: AppBarTheme(
            centerTitle: true,
            titleTextStyle: TextStyle(
              fontSize: 18,
              fontFamily: fontFamily,
              fontWeight: FontWeight.w700,
              color: textLight,
            )),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MaterialColor(
            primary.value,
            {
              50: primary.withOpacity(.1),
              100: primary.withOpacity(.2),
              200: primary.withOpacity(.3),
              300: primary.withOpacity(.4),
              400: primary.withOpacity(.5),
              500: primary.withOpacity(.6),
              600: primary.withOpacity(.7),
              700: primary.withOpacity(.8),
              800: primary.withOpacity(.9),
              900: primary,
            },
          ),
          backgroundColor: bgLight,
        ),
      );
}
