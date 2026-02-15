import 'package:flutter/material.dart';
import 'package:wolfera/core/presentation/widgets/feature_placeholder_page.dart';

class MyListingsPage extends StatelessWidget {
  const MyListingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeaturePlaceholderPage(
      title: 'My Listings',
      description: 'Phase 1 scaffold for owned equipment listings.',
    );
  }
}
