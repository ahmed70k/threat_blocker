import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

class BuildActivityTile extends StatelessWidget {
  final Map<String, String> activity;

  const BuildActivityTile({
    super.key,
    required this.activity,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    Color statusColor;
    IconData statusIcon;
    String statusText;

    switch (activity['status']) {
      case 'safe':
        statusColor = Colors.green;
        statusIcon = Icons.check_circle_rounded;
        statusText = l10n.safe;
        break;
      case 'malicious':
        statusColor = Colors.red;
        statusIcon = Icons.gpp_bad_rounded;
        statusText = l10n.malicious;
        break;
      case 'suspicious':
      default:
        statusColor = Colors.orange;
        statusIcon = Icons.warning_rounded;
        statusText = l10n.suspicious;
        break;
    }

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: theme.colorScheme.outlineVariant.withAlpha(50)),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: statusColor.withAlpha(20),
            shape: BoxShape.circle,
          ),
          child: Icon(statusIcon, color: statusColor, size: 24),
        ),
        title: Text(
          activity['url'] ?? 'Unknown URL',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(
              activity['date'] ?? 'No date',
              style: TextStyle(
                fontSize: 13,
                color: theme.colorScheme.onSurface.withAlpha(150),
              ),
            ),
          ],
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: statusColor.withAlpha(30),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            statusText,
            style: TextStyle(
              color: statusColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

