import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

class BuildStatsRow extends StatelessWidget {
  final ThemeData theme;

  const BuildStatsRow({
    super.key,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Row(
      children: [
        Expanded(
          child: _buildStatItem(
            theme,
            icon: Icons.link_rounded,
            value: '124',
            label: l10n.scannedLinks,
          ),
        ),
        Container(
          height: 50,
          width: 1,
          color: theme.colorScheme.onSurface.withAlpha(30),
        ),
        Expanded(
          child: _buildStatItem(
            theme,
            icon: Icons.shield_rounded,
            value: '18',
            label: l10n.threatsBlocked,
          ),
        ),
      ],
    );
  }

  Widget _buildStatItem(ThemeData theme, {required IconData icon, required String value, required String label}) {
    return Column(
      children: [
        Icon(icon, color: theme.colorScheme.primary, size: 28),
        const SizedBox(height: 8),
        Text(
          value,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: theme.colorScheme.onSurface.withAlpha(150),
          ),
        ),
      ],
    );
  }
}

