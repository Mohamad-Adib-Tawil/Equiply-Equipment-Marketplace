import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wolfera/app/app_shell_scaffold.dart';
import 'package:wolfera/core/routing/route_paths.dart';
import 'package:wolfera/features/chat_inbox/presentation/pages/chat_inbox_page.dart';
import 'package:wolfera/features/favorites/presentation/pages/favorites_page.dart';
import 'package:wolfera/features/home_feed/presentation/pages/home_feed_page.dart';
import 'package:wolfera/features/listing_details/presentation/pages/listing_details_page.dart';
import 'package:wolfera/features/my_listings/presentation/pages/my_listings_page.dart';
import 'package:wolfera/features/post_listing/presentation/pages/post_listing_page.dart';
import 'package:wolfera/features/search_filters/presentation/pages/search_filters_page.dart';
import 'package:wolfera/features/user_profile/presentation/pages/profile_page.dart';

class EquiplyRouter {
  EquiplyRouter();

  late final GoRouter router = GoRouter(
    initialLocation: RoutePaths.home,
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (
          BuildContext context,
          GoRouterState state,
          StatefulNavigationShell navigationShell,
        ) {
          // Indexed stack keeps branch state alive for better marketplace UX.
          return AppShellScaffold(navigationShell: navigationShell);
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: RoutePaths.home,
                name: RouteNames.home,
                pageBuilder: (_, __) =>
                    const NoTransitionPage<void>(child: HomeFeedPage()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: RoutePaths.search,
                name: RouteNames.search,
                pageBuilder: (_, __) =>
                    const NoTransitionPage<void>(child: SearchFiltersPage()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: RoutePaths.postListing,
                name: RouteNames.postListing,
                pageBuilder: (_, __) =>
                    const NoTransitionPage<void>(child: PostListingPage()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: RoutePaths.favorites,
                name: RouteNames.favorites,
                pageBuilder: (_, __) =>
                    const NoTransitionPage<void>(child: FavoritesPage()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: RoutePaths.chatInbox,
                name: RouteNames.chatInbox,
                pageBuilder: (_, __) =>
                    const NoTransitionPage<void>(child: ChatInboxPage()),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: RoutePaths.profile,
        name: RouteNames.profile,
        builder: (_, __) => const UserProfilePage(),
      ),
      GoRoute(
        path: RoutePaths.listingDetails,
        name: RouteNames.listingDetails,
        builder: (_, GoRouterState state) => ListingDetailsPage(
          listingId: state.pathParameters['id'] ?? 'unknown',
        ),
      ),
      GoRoute(
        path: '/my-listings',
        builder: (_, __) => const MyListingsPage(),
      ),
    ],
  );
}
