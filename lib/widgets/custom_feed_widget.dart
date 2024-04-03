import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weed_club/app/routes.dart';
import 'package:weed_club/utils/colors.dart';
import 'package:weed_club/utils/constants.dart';
import 'package:weed_club/utils/svg_images.dart';
import 'package:weed_club/widgets/custom_user_header.dart';

class CustomFeedWidget extends StatelessWidget {
  final int? maxLines;
  final bool isComment;
  final bool showComments;

  const CustomFeedWidget({
    this.maxLines = 3,
    this.isComment = false,
    this.showComments = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CustomUserHeader(),
          const SizedBox(
            height: cornerBorderRadiusXS,
          ),
          SizedBox(
            width: isComment ? double.infinity : 320,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hey everyone, just wanted to share my experience with a new strain I tried recently. I picked up some... Hey everyone, just wanted to share my experience with a new strain I tried recently.Hey everyone, just wanted to share my experience with a new strain I tried recently. Hey everyone, just wanted to share my experience with a new strain I tried recently. Hey everyone, just wanted to share my experience with a new strain I tried recently.',
                  maxLines: maxLines,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(color: Colors.black),
                ),
                const SizedBox(
                  height: cornerBorderRadiusXS,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(cornerBorderRadiusXS),
                  ),
                  height: 200.0,
                  width: double.infinity,
                ),
                const SizedBox(
                  height: cornerBorderRadiusXS,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 60.0,
                        child: Row(
                          children: [
                            thumbsUpOutlined,
                            Text(
                              '56',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(color: textPrimary),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 50.0,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () =>
                                  context.goNamed(Routes.comment.routeName),
                              child: commentIcon,
                            ),
                            Text(
                              '8',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(color: textPrimary),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 50.0,
                        child: bookmarkOutlined,
                      ),
                      SizedBox(
                        width: 50.0,
                        child: verticalMenuIcon,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Comment Section
          if (showComments) ...[
            const CommentsSection(),
          ],
        ],
      ),
    );
  }
}

class CommentsSection extends StatelessWidget {
  const CommentsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Divider(
          color: borderColor,
        ),
        const SizedBox(
          height: cornerBorderRadiusXS,
        ),
        const CustomUserHeader(),
        const SizedBox(
          height: cornerBorderRadiusXS,
        ),
        SizedBox(
          width: 320,
          child: Column(
            children: [
              Text(
                'Time to roll up and unwind with some good vibes and even better buds. Who\'s joining me for a chill sesh?',
                style: Theme.of(context)
                    .textTheme
                    .labelSmall
                    ?.copyWith(color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60.0,
                      child: Row(
                        children: [
                          thumbsUpOutlined,
                          Text(
                            '56',
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall
                                ?.copyWith(color: textPrimary),
                          ),
                        ],
                      ),
                    ),
                    verticalMenuIcon,
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
