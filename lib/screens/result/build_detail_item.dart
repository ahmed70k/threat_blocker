import 'dart:core';
import 'package:flutter/material.dart';
import 'package:threat_blocker/l10n/app_localizations.dart';
import '../../widgets/quick_action_card.dart';

class BuildDetailItem extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  const BuildDetailItem({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, color: color),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            StatusBadge(label:AppLocalizations.of(context)!.warning, color: color),
          ],
        ),
      ),
    );
  }
}
