import 'package:flutter/material.dart';
import 'package:threat_blocker/l10n/app_localizations.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';
import '../../widgets/quick_action_card.dart';
import '../submit_link/submit_link_screen.dart';
import '../profile/user_profile_screen.dart';
import '../safety_tips/safety_tips_screen.dart';
import '../activity/recent_activity_screen.dart';
import 'build_security_score_card.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      /// Using a transparent AppBar to blend with the background and create a modern look
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(AppLocalizations.of(context)!.phishingAnalyzer, style: AppTextStyles.appBarTitle20.copyWith(color: theme.colorScheme.onSurface)),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () => Navigator.pushNamed(context, UserProfileScreen.routeName),
              child: Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: theme.colorScheme.primary.withAlpha(80), width: 2.5),
                  color: theme.colorScheme.primary.withAlpha(25),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.primary.withAlpha(30),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(Icons.person_rounded, size: 28, color: theme.colorScheme.primary),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppLocalizations.of(context)!.securityOverview, style: AppTextStyles.h1.copyWith(color: theme.colorScheme.onSurface)),
                const SizedBox(height: 16),
                /// The BuildSecurityScoreCard widget is a custom card that displays the user's security score and a brief summary of their protection level. It uses a combination of text and icons to create an engaging visual representation of the user's security status.
                BuildSecurityScoreCard(),
                const SizedBox(height: 32),
                Text(AppLocalizations.of(context)!.quickActions, style: AppTextStyles.h2.copyWith(color: theme.colorScheme.onSurface)),
                const SizedBox(height: 16),
                /// The QuickActionCard widget is a reusable component that represents a single action the user can take. It includes an icon, title, description, and an onTap callback to handle user interaction. This design allows
                QuickActionCard(
                  title: AppLocalizations.of(context)!.analyzeLink,
                  description: AppLocalizations.of(context)!.scanSuspiciousUrl,
                  icon: Icons.link_rounded,
                  onTap: () {
                    Navigator.pushNamed(context, SubmitLinkScreen.routeName);
                  },
                ),
                const SizedBox(height: 12),
                QuickActionCard(
                  title:AppLocalizations.of(context)!.safetyTips,
                  description: AppLocalizations.of(context)!.learnStayProtected,
                  icon: Icons.lightbulb_outline_rounded,
                  color: AppColors.orangeAction,
                  onTap: () {
                    Navigator.pushNamed(context, SafetyTipsScreen.routeName);
                  },
                ),
                const SizedBox(height: 12),
                QuickActionCard(
                  title:AppLocalizations.of(context)!.recentActivity,
                  description: AppLocalizations.of(context)!.historyScannedLinks,
                  icon: Icons.history_rounded,
                  color: AppColors.blueAction,
                  onTap: () {
                    Navigator.pushNamed(context, RecentActivityScreen.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
