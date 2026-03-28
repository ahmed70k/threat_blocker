import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:threat_blocker/l10n/app_localizations.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';
import '../../widgets/quick_action_card.dart';
import 'build_detail_item.dart';
import 'build_result_header.dart';
import '../home/home_screen.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Using a transparent AppBar to blend with the background and create a modern look
      appBar: AppBar(
        title:  Text(AppLocalizations.of(context)!.analysisResult),
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () => Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// The header section with a warning icon and message
            BuildResultHeader(),
            const SizedBox(height: 32),
            Text(
              AppLocalizations.of(context)!.securityDetails,
              style: AppTextStyles.h2,
            ),
            const SizedBox(height: 16),
            /// Each detail item is a card with an icon, title, and description, and can be tapped to copy the description to the clipboard
            BuildDetailItem(
              title:  AppLocalizations.of(context)!.certificate,
              icon: Icons.verified_outlined,
              color: AppColors.warning,
              description: AppLocalizations.of(context)!.valid_recently_issued
            ),
            const SizedBox(height: 12),
            BuildDetailItem(
              title:  AppLocalizations.of(context)!.redirects,
              icon: Icons.directions_outlined,
              color: AppColors.error,
              description: AppLocalizations.of(context)!.redirectsDesc

            ),
            const SizedBox(height: 12),
            BuildDetailItem(
              title: AppLocalizations.of(context)!.domainAge,
              icon: Icons.calendar_month_outlined,
              color: AppColors.error,
              description: AppLocalizations.of(context)!.only_four_days_old
            ),
            const SizedBox(height: 12),
            BuildDetailItem(
              title: AppLocalizations.of(context)!.serverLocation,
              icon: Icons.public_rounded,
              color: Colors.blueAccent,
              description: AppLocalizations.of(context)!.usa,
              onTap: () {
                Navigator.pushNamed(context, '/server_location');
              },
            ),
            const SizedBox(height: 12),
            BuildDetailItem(
                title: AppLocalizations.of(context)!.ipAddress,
                icon: Icons.lan_outlined,
                color: Colors.blueGrey,
                description: AppLocalizations.of(context)!.sampleIp,
            ),
            const SizedBox(height: 12),
            BuildDetailItem(
              title: AppLocalizations.of(context)!.domain,
              icon: Icons.link_rounded,
              color: Colors.teal,
              description: AppLocalizations.of(context)!.sampleDomain,
            ),
            const SizedBox(height: 48),
            /// Action buttons at the bottom for returning home or reporting a false positive
            FilledButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, HomeScreen.routeName, (route) => false);
              },
              child:  Text(AppLocalizations.of(context)!.returnHome,),
            ),
            const SizedBox(height: 12),
            /// The report button is styled as an outlined button to indicate it's a secondary action, and it opens a dialog when pressed
            OutlinedButton(
              onPressed: () => _showReportDialog(context),
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              child:  Text(AppLocalizations.of(context)!.reportFalsePositive,),
            ),
          ],
        ),
      ),
    );
  }
  /// This method shows a confirmation dialog when the user taps the "Report False Positive" button, allowing them to confirm their action and providing feedback with a SnackBar after reporting
  void _showReportDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        title: Row(
          children: [
            Icon(Icons.report_gmailerrorred_rounded, color: theme.colorScheme.primary),
            const SizedBox(width: 12),
            Text(l10n.confirmReport),
          ],
        ),
        content: Text(l10n.reportMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(l10n.thankYouReporting),
                  backgroundColor: theme.colorScheme.primary,
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              foregroundColor: theme.colorScheme.onPrimary,
              elevation: 0,
            ),
            child: Text(l10n.report),
          ),
          const SizedBox(width: 4),
        ],
      ),
    );
  }
}
