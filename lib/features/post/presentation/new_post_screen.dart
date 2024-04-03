import 'package:flutter/material.dart';
import 'package:weed_club/utils/colors.dart';
import 'package:weed_club/widgets/custom_appbar_with_actions.dart';
import 'package:weed_club/widgets/custom_user_header.dart';
import 'package:weed_club/widgets/page_layout.dart';

class NewPostScreen extends StatelessWidget {
  const NewPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageLayout(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: [
              const CustomUserHeader(),
              Flexible(
                child: SafeArea(
                  child: TextField(
                    onTapOutside: (_) => FocusScope.of(context).unfocus(),
                    textInputAction: TextInputAction.newline,
                    minLines: null,
                    maxLines: null,
                    expands: true,
                    decoration: const InputDecoration(
                        border: InputBorder.none, hintText: 'Start sharing...'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: CustomAppBarWithActions(
        actions: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
                fixedSize: const Size(75.0, 34.0),
                backgroundColor: textPrimary,
                visualDensity: const VisualDensity(vertical: -4)),
            child: Text(
              'Share',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: white),
            ),
          ),
        ],
      ),
    );
  }
}
