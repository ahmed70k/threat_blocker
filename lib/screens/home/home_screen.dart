import 'package:flutter/material.dart';
import 'package:threat_blocker/l10n/app_localizations.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';
import '../../widgets/quick_action_card.dart';
import '../submit_link/submit_link_screen.dart';
import '../notifications/notifications_screen.dart';
import 'build_security_score_card.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.phishingAnalyzer, style: AppTextStyles.appBarTitle20),
        actions: [
          IconButton(
            onPressed: () =>
                Navigator.pushNamed(context, NotificationsScreen.routeName),
            icon: const Icon(Icons.notifications_none_rounded),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppLocalizations.of(context)!.securityOverview, style: AppTextStyles.h1),
            const SizedBox(height: 16),
            BuildSecurityScoreCard(),
            const SizedBox(height: 32),
            Text(AppLocalizations.of(context)!.quickActions,style: AppTextStyles.h2),
            const SizedBox(height: 16),
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
              onTap: () {},
            ),
            const SizedBox(height: 12),
            QuickActionCard(
              title:AppLocalizations.of(context)!.recentActivity,
              description: AppLocalizations.of(context)!.historyScannedLinks,
              icon: Icons.history_rounded,
              color: AppColors.blueAction,
              onTap: () {},
            ),

          ],
        ),
      ),
    );
  }
}
