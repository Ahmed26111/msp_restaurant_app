import 'package:flutter/material.dart';
import 'package:msp_restaurant_app/constants/colors_manager.dart';

ThemeData lightTheme() {
  return ThemeData(
    primaryColorLight: ColorsManager.splashScreenColor1,
    primaryColorDark: ColorsManager.splashScreenColor2,
    scaffoldBackgroundColor: ColorsManager.scaffoldBackgroundColor,
    secondaryHeaderColor: ColorsManager.rateIconColor,
    hoverColor: ColorsManager.green,
    canvasColor: ColorsManager.white,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsManager.scaffoldBackgroundColor,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.transparent,
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        color: ColorsManager.white,
        fontFamily: "lobster",
        fontSize: 50,
      ),
      headlineMedium: TextStyle(
        color: ColorsManager.black,
        fontFamily: "sans",
        fontSize: 34,
      ),
      headlineSmall: TextStyle(
        color: ColorsManager.black,
        fontFamily: "lobster",
        fontSize: 29,
      ),
      titleLarge: TextStyle(
        color: ColorsManager.grey,
        fontFamily: "sans",
        fontSize: 13,
      ),
      titleMedium: TextStyle(
        color: ColorsManager.black,
        fontFamily: "sans",
        fontSize: 15,
      ),
      titleSmall: TextStyle(
        color: ColorsManager.black,
        fontFamily: "sans",
        fontSize: 10,
      ),
      bodyLarge: TextStyle(
        color: ColorsManager.black,
        fontFamily: "sans",
        fontSize: 35,
      ),
      bodyMedium: TextStyle(
        color: ColorsManager.grey,
        fontFamily: "sans",
        fontSize: 20,
      ),
      bodySmall: TextStyle(
        color: ColorsManager.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      labelSmall: TextStyle(
        color: ColorsManager.black,
        fontFamily: "sans",
        fontSize: 20,
      ),
      labelLarge: TextStyle(
        color: ColorsManager.rateIconColor,
        fontWeight: FontWeight.bold,
        fontSize: 35,
      ),
      labelMedium: TextStyle(
        color: ColorsManager.black,
        fontFamily: "sans",
        fontSize: 12,
      ),
      displayLarge: TextStyle(
        color: ColorsManager.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
      displayMedium: TextStyle(
        color: ColorsManager.splashScreenColor2,
        fontFamily: "sans",
        fontSize: 40,
      ),
  ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: ColorsManager.greyButton,
        foregroundColor: ColorsManager.greyText,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    ),
    cardTheme: CardThemeData(
      color: ColorsManager.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 15,
      shadowColor: ColorsManager.black
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsManager.splashScreenColor2,
      selectedItemColor: ColorsManager.white,
      unselectedItemColor: ColorsManager.addToCartButtonColor,
      showUnselectedLabels: false,
      showSelectedLabels: true,
      selectedLabelStyle: TextStyle(
        fontWeight: FontWeight.bold
      ),
      elevation: 10,
    ),
    listTileTheme: ListTileThemeData(
      tileColor: ColorsManager.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      iconColor: ColorsManager.white,
    )
  );
}

ButtonStyle selectedButtonStyle() {
  return FilledButton.styleFrom(
    backgroundColor: ColorsManager.splashScreenColor2,
    foregroundColor: ColorsManager.scaffoldBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  );
}

ButtonStyle addToCartButtonStyle() {
  return FilledButton.styleFrom(
    backgroundColor: ColorsManager.addToCartButtonColor,
    foregroundColor: ColorsManager.scaffoldBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
  );
}

ButtonStyle checkoutButtonStyle() {
  return FilledButton.styleFrom(
    backgroundColor: ColorsManager.splashScreenColor2,
    foregroundColor: ColorsManager.scaffoldBackgroundColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
  );
}

ListTileThemeData visaTileTheme(){
  return ListTileThemeData(
    tileColor: ColorsManager.visaListTile,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
    ),
    iconColor: ColorsManager.white,
  );
}

ListTileThemeData masterCardTileTheme(){
  return ListTileThemeData(
    tileColor: ColorsManager.masterCardListTile,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
    ),
    iconColor: ColorsManager.white,
  );
}
