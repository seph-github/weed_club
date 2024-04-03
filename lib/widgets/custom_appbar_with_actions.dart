import 'package:flutter/material.dart';
import 'package:weed_club/utils/constants.dart';

class CustomAppBarWithActions extends StatelessWidget
    implements PreferredSizeWidget {
  final List<Widget>? actions;

  const CustomAppBarWithActions({
    super.key,
    this.actions,
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
      actions: [
        ...actions ??
            [
              const SizedBox(),
            ],
        const SizedBox(
          width: commonPaddingH,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kTextTabBarHeight);
}
