import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weed_club/features/post/presentation/new_post_screen.dart';

class NewPostPage extends ConsumerWidget {
  const NewPostPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const NewPostScreen();
  }
}
