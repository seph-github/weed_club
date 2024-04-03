import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weed_club/utils/colors.dart';
import 'package:weed_club/utils/constants.dart';
import 'package:weed_club/utils/svg_images.dart';
import 'package:weed_club/widgets/custom_appbar_no_actions.dart';
import 'package:weed_club/widgets/custom_feed_widget.dart';
import 'package:weed_club/widgets/page_layout.dart';

class CommentScreen extends StatelessWidget {
  const CommentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarNoActions(),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageLayout(
            child: ListView(
              children: const [
                CustomFeedWidget(
                  maxLines: null,
                  isComment: true,
                  showComments: true,
                ),
              ],
            ),
          ),
          Container(
            color: backgroundColor,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  onTapOutside: (_) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    hintText: 'Comment',
                    suffixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Transform.scale(
                        scale: 1.2,
                        child: sendIcon,
                      ),
                    ),
                    fillColor: white,
                    filled: true,
                    isDense: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(borderRadius),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
