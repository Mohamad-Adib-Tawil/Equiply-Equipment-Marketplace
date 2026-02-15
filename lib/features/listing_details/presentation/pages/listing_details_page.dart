import 'package:flutter/material.dart';
import 'package:wolfera/core/presentation/widgets/feature_placeholder_page.dart';

class ListingDetailsPage extends StatelessWidget {
  const ListingDetailsPage({
    super.key,
    required this.listingId,
  });

  final String listingId;

  @override
  Widget build(BuildContext context) {
    return FeaturePlaceholderPage(
      title: 'Listing Details',
      description: 'Phase 1 scaffold for listing id: $listingId',
    );
  }
}
