import 'package:flutter/material.dart';
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
        title: const Text('Analysis Result'),
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
              'Security Details',
              style: AppTextStyles.h2,
            ),
            const SizedBox(height: 16),
            BuildDetailItem(
              title: "Certificate",
              icon: Icons.verified_outlined,
              color: AppColors.warning,
              description: "Valid but recently issued",
            ),
            const SizedBox(height: 12),
            BuildDetailItem(
              title: "Redirects",
              icon: Icons.directions_outlined,
              color: AppColors.error,
              description: '3 redirects detected',

            ),
            const SizedBox(height: 12),
            BuildDetailItem(
              title: 'Domain Age',
              icon: Icons.calendar_month_outlined,
              color: AppColors.error,
              description: 'Only 4 days old',
            ),
            const SizedBox(height: 48),
            FilledButton(
              onPressed: () {
                Navigator.popUntil(context, (route) {
                  return route.isFirst;});
                },
              child: const Text('Return to Home'),
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              child: const Text('Report False Positive'),
            ),
          ],
        ),
      ),
    );
  }
}
