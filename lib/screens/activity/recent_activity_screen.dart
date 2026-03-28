import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
import '../../theme/app_text_styles.dart';
import 'build_activity_tile.dart';

class RecentActivityScreen extends StatelessWidget {
  static const String routeName = '/recent-activity';

  const RecentActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    /// In a real app, you would fetch this data from a database or API
    final List<Map<String, String>> activities = [
      {
        'url': 'https://www.google.com',
        'date': '26 March 2026, 10:30 AM',
        'status': 'safe',
      },
      {
        'url': 'https://bit.ly/secure-login-update',
        'date': '25 March 2026, 02:15 PM',
        'status': 'malicious',
      },
      {
        'url': 'https://untrusted-site.net/offers',
        'date': '24 March 2026, 09:00 AM',
        'status': 'suspicious',
      },
      {
        'url': 'https://github.com/flutter/flutter',
        'date': '23 March 2026, 11:45 PM',
        'status': 'safe',
      },
      {
        'url': 'http://bank-verification-login.tk',
        'date': '22 March 2026, 08:20 PM',
        'status': 'malicious',
      },
    ];
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: theme.colorScheme.onSurface,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          l10n.activityHistory,
          style: AppTextStyles.appBarTitle20.copyWith(
            color: theme.colorScheme.onSurface,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              // Implementation for clearing history
            },
            child: Text(
              l10n.clearAll,
              style: TextStyle(
                color: theme.colorScheme.error,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: activities.isEmpty
      /// In a real app, you would check if the activities list is empty and show this state accordingly
          ? _buildEmptyState(context)
          : ListView.separated(
              padding: const EdgeInsets.all(20),
              itemCount: activities.length,
              separatorBuilder: (context, index) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                /// In a real app, you would fetch this data from a database or API
                return BuildActivityTile(activity: activities[index]);
              },
            ),
    );
  }
  Widget _buildEmptyState(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.history_rounded,
            size: 80,
            color: theme.colorScheme.onSurface.withAlpha(50),
          ),
          const SizedBox(height: 16),
          Text(
            l10n.noRecentActivity,
            style: TextStyle(
              fontSize: 18,
              color: theme.colorScheme.onSurface.withAlpha(150),
            ),
          ),
        ],
      ),
    );
  }
}
