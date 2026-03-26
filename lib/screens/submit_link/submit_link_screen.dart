import 'package:flutter/material.dart';
import 'package:threat_blocker/l10n/app_localizations.dart';
import 'package:threat_blocker/widgets/test_text_form.dart';
import '../../theme/app_text_styles.dart';
import '../analysis_status/analysis_status_screen.dart';

class SubmitLinkScreen extends StatelessWidget {
  static const routeName = '/submit-link';
  const SubmitLinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(AppLocalizations.of(context)!.analyzeLink),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.link_rounded,
              size: 80,
              color: Colors.grey,
            ),
            const SizedBox(height: 24),
            Text(
              AppLocalizations.of(context)!.pleaseEnterUrl,
              textAlign: TextAlign.center,
              style: AppTextStyles.h1,
            ),
            const SizedBox(height: 12),
            Text(
              AppLocalizations.of(context)!.copyPasteLinkDescription,
              textAlign: TextAlign.center,
              style: AppTextStyles.bodyMedium14.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 40),
           TestTextFormField(validator:
          (value) {
            if (value == null || value.isEmpty) {
              return AppLocalizations.of(context)!.pleaseEnterUrl;
            }
            return null;

          },
             hintText: AppLocalizations.of(context)!.exampleUrlHint,
             prefixIcon: Icon(Icons.search_rounded),
           ),
            const Spacer(),
            FilledButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AnalysisStatusScreen()),
              ),
              child:  Text(AppLocalizations.of(context)!.startAnalysis),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
