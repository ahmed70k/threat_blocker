import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
import 'build_logout_button.dart';
import 'build_profile_header.dart';
import 'build_settings_section.dart';
import 'build_stats_row.dart';
import 'build_subscription_card.dart';
class UserProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';
  const UserProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        title: Text(
          l10n.profile,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: theme.colorScheme.onSurface),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Center(
          /// Using ConstrainedBox to limit the width of the content and create a more focused layout on larger screens
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              children: [
                /// Breaking down the profile screen into smaller widgets for better readability and maintainability
                BuildProfileHeader(theme: theme),
                const SizedBox(height: 32),
                /// Displaying user stats in a visually appealing way with custom styling
                BuildStatsRow(theme: theme),
                const SizedBox(height: 32),
                /// Highlighting the subscription status with a card that stands out from the rest of the content
                BuildSubscriptionCard(theme: theme),
                const SizedBox(height: 32),
                /// Grouping account settings together in a section with clear separation from other parts of the profile
                BuildSettingsSection(theme: theme),
                const SizedBox(height: 48),
                /// Providing a clear and accessible logout button that stands out from the rest of the content
                BuildLogoutButton(theme: theme),
                const SizedBox(height: 32),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
