import 'package:flutter/material.dart';
import 'package:weed_club/utils/colors.dart';
import 'package:weed_club/utils/constants.dart';

ThemeData get theme => ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.white,
        background: white,
      ),
      fontFamily: 'Inter',
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: titleSize,
          color: titleColor,
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          fontSize: labelSmall,
          color: hintText,
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          fontSize: labelLarge,
          color: white,
          fontWeight: FontWeight.w500,
        ),
      ),
      useMaterial3: true,
    );
