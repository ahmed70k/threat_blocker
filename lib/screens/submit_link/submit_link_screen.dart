import 'package:flutter/material.dart';
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
        title: const Text('Analyze Link'),
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
              'Enter URL to scan',
              textAlign: TextAlign.center,
              style: AppTextStyles.h1,
            ),
            const SizedBox(height: 12),
            Text(
              'Copy and paste the link you want to verify. We will check it against our database of known threats.',
              textAlign: TextAlign.center,
              style: AppTextStyles.bodyMedium14.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 40),
           TestTextFormField(validator:
          (value) {
            if (value == null || value.isEmpty) {
              return "please enter URL";
            }
            return null;

          },
             hintText: 'https://example.com/login',
             prefixIcon: Icon(Icons.search_rounded),
           ),
            const Spacer(),
            FilledButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AnalysisStatusScreen()),
              ),
              child: const Text('Start Analysis'),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
