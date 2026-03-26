import 'package:flutter/material.dart';
import 'package:threat_blocker/l10n/app_localizations.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';
import '../../widgets/quick_action_card.dart';
import 'build_detail_item.dart';
import 'build_result_header.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(AppLocalizations.of(context)!.analysisResult),
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () => Navigator.popUntil(context, (route) => route.isFirst),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BuildResultHeader(),
            const SizedBox(height: 32),
            Text(
              AppLocalizations.of(context)!.securityDetails,
              style: AppTextStyles.h2,
            ),
            const SizedBox(height: 16),
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
            const SizedBox(height: 48),
            FilledButton(
              onPressed: () {
                Navigator.popUntil(context, (route) {
                  return route.isFirst;});
                },
              child:  Text(AppLocalizations.of(context)!.returnHome,),
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () {},
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
}
