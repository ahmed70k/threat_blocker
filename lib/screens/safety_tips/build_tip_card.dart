import 'package:flutter/material.dart';

class BuildTipCard extends StatelessWidget {
  final Map<String, dynamic> tip;

  const BuildTipCard({super.key, required this.tip});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withAlpha(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(10),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: (tip['color'] as Color).withAlpha(30),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Icon(tip['icon'] as IconData, color: tip['color'] as Color, size: 28),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      tip['title'] as String,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                tip['desc'] as String,
                style: TextStyle(
                  fontSize: 15,
                  color: theme.colorScheme.onSurface.withAlpha(180),
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
