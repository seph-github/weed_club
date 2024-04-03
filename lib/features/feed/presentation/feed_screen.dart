import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weed_club/app/routes.dart';
import 'package:weed_club/widgets/custom_feed_widget.dart';
import 'package:weed_club/utils/svg_images.dart';
import 'package:weed_club/widgets/custom_appbar_with_actions.dart';
import 'package:weed_club/widgets/page_layout.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithActions(
        actions: [
          GestureDetector(
            onTap: () => context.goNamed(Routes.post.routeName),
            child: circleAddButton,
          ),
        ],
      ),
      body: PageLayout(
        child: SafeArea(
          child: ListView(
            children: const [
              CustomFeedWidget(),
              CustomFeedWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
