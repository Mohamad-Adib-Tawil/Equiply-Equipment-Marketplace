import 'package:flutter/material.dart';
import 'package:wolfera/core/presentation/widgets/feature_placeholder_page.dart';

class SearchFiltersPage extends StatelessWidget {
  const SearchFiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeaturePlaceholderPage(
      title: 'Search + Filters',
      description:
          'Phase 1 scaffold for category, power type, and usage hours filters.',
    );
  }
}
