import 'package:flutter/material.dart';

class CustomAppBarNoActions extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarNoActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        'assets/images/weed_club_logo.png',
        height: 35.0,
        fit: BoxFit.cover,
      ),
      centerTitle: false,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}
