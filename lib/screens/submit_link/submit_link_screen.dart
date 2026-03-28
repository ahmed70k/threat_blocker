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
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.analyzeLink),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 600),
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: IntrinsicHeight(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Icon(
                            Icons.link_rounded,
                            size: 80,
                            color: theme.colorScheme.primary,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            AppLocalizations.of(context)!.pleaseEnterUrl,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.h1.copyWith(
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            AppLocalizations.of(
                              context,
                            )!.copyPasteLinkDescription,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.bodyMedium14.copyWith(
                              color: theme.colorScheme.onSurface.withOpacity(
                                0.6,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          /// The text field for entering the URL is implemented using a custom TestTextFormField widget. It includes validation to ensure that the input is not empty and provides a hint text to guide the user on what to enter. The prefix icon is a search icon styled with the primary color of the theme.
                          TestTextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(
                                  context,
                                )!.pleaseEnterUrl;
                              }
                              return null;
                            },
                            hintText: AppLocalizations.of(
                              context,
                            )!.exampleUrlHint,
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                          const Expanded(child: SizedBox(height: 40)),
                          /// The "Start Analysis" button is styled with the primary color and has rounded corners. When pressed, it navigates to the AnalysisStatusScreen.
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: theme.colorScheme.primary,
                              foregroundColor: theme.colorScheme.onPrimary,
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              elevation: 2,
                            ),
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const AnalysisStatusScreen(),
                              ),
                            ),
                            child: Text(
                              AppLocalizations.of(context)!.startAnalysis,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
