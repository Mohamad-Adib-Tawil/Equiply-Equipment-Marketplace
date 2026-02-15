import 'package:flutter/material.dart';
import 'package:wolfera/core/presentation/widgets/feature_placeholder_page.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FeaturePlaceholderPage(
      title: 'Profile',
      description: 'Phase 1 scaffold for user profile and account settings.',
    );
  }
}
