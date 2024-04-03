import 'package:flutter/material.dart';
import 'package:weed_club/utils/colors.dart';
import 'package:weed_club/utils/constants.dart';

class CustomUserHeader extends StatelessWidget {
  const CustomUserHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 32 / 1.75,
        ),
        const SizedBox(
          width: cornerBorderRadiusXS,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Doe',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: textPrimary),
            ),
            Text(
              '@doe_123 14 mins ago',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ],
    );
  }
}
