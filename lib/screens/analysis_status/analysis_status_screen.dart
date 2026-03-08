import 'package:flutter/material.dart';
import '../../theme/app_text_styles.dart';
import '../result/result_screen.dart';

class AnalysisStatusScreen extends StatefulWidget {
  const AnalysisStatusScreen({super.key});

  @override
  State<AnalysisStatusScreen> createState() => _AnalysisStatusScreenState();
}

class _AnalysisStatusScreenState extends State<AnalysisStatusScreen> {
  @override
  void initState() {
    super.initState();
    completeAnalysis();
  }

  Future<void> completeAnalysis() async {
    await Future.delayed(const Duration(seconds: 4));
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const ResultScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  strokeWidth: 8,
                  strokeCap: StrokeCap.round,
                ),
              ),
              const SizedBox(height: 48),
              Text(
                'Scanning Link...',
                style: AppTextStyles.h1,
              ),
              const SizedBox(height: 16),
              Text(
                'Checking for malware, phishing attempts, and suspicious redirection paths.',
                textAlign: TextAlign.center,
                style: AppTextStyles.bodyMedium14.copyWith(color: Colors.grey),
              ),
              const SizedBox(height: 40),
              LinearProgressIndicator(
                borderRadius: BorderRadius.circular(10),
                minHeight: 12,
              ),
              const SizedBox(height: 12),
              Text(
                'Analyzing security certificates (65%)',
                style: AppTextStyles.bodyMedium14.copyWith(fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
