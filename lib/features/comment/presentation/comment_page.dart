import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weed_club/features/comment/presentation/comment_screen.dart';

class CommentPage extends ConsumerWidget {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const CommentScreen();
  }
}
