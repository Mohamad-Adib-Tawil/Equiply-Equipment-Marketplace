import 'package:flutter/material.dart';
import 'package:wolfera/core/presentation/widgets/feature_placeholder_page.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeaturePlaceholderPage(
      title: 'Favorites',
      description: 'Phase 1 scaffold for saved equipment listings.',
    );
  }
}
