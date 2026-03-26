import 'package:flutter/material.dart';
import 'package:threat_blocker/l10n/app_localizations.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';

class BuildResultHeader extends StatelessWidget {
  const BuildResultHeader({super.key});

  @override
  Widget build(BuildContext context) {

      return Container(
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: Colors.orange.withOpacity(0.1),
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: Colors.orange.withOpacity(0.6), width: 2),
        ),
        child: Column(
          children: [
            const Icon(Icons.warning_amber_rounded, size: 80, color: AppColors.warning),
            const SizedBox(height: 24),
            Text(
              AppLocalizations.of(context)!.highRiskDetected,
              style: AppTextStyles.h1.copyWith(color: AppColors.warning),
            ),
            const SizedBox(height: 8),
            Text(
              AppLocalizations.of(context)!.phishingWarningMessage,
              textAlign: TextAlign.center,
              style: AppTextStyles.bodyMedium14,
            ),
            const SizedBox(height: 24),
            Text(
              AppLocalizations.of(context)!.exampleRiskUrl,
              style: AppTextStyles.bodySmall12.copyWith(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      );
    }
  }
