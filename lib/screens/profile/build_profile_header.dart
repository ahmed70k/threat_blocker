import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

class BuildProfileHeader extends StatelessWidget {
  final ThemeData theme;
  const BuildProfileHeader({
    super.key,
    required this.theme,
  });
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundColor: theme.colorScheme.primary.withAlpha(40),
          child: Icon(
            Icons.security_rounded,
            size: 50,
            color: theme.colorScheme.primary,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          l10n.userName,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'ahmed@threatblocker.com',
          style: TextStyle(
            fontSize: 16,
            color: theme.colorScheme.onSurface.withAlpha(150),
          ),
        ),
      ],
    );
  }
}

