import 'package:flutter/material.dart';
import 'package:wolfera/core/presentation/widgets/feature_placeholder_page.dart';

class HomeFeedPage extends StatelessWidget {
  const HomeFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeaturePlaceholderPage(
      title: 'Home Feed',
      description: 'Phase 1 scaffold for equipment listing feed.',
    );
  }
}
