import 'package:flutter/material.dart';
import 'package:threat_blocker/theme/app_colors.dart';
import '../../theme/app_text_styles.dart';

class BuildSecurityScoreCard extends StatelessWidget {
  const BuildSecurityScoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color:AppColors.primary,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Safety Score',
                     style: AppTextStyles.bodyLarge16.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Great Protection',
                      style: AppTextStyles.h1.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '92%',
                      style: AppTextStyles.h1.copyWith(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 48,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white24, width: 8),
                ),
                child: const Center(
                  child: Icon(Icons.verified_user_rounded, color: Colors.white, size: 48),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
