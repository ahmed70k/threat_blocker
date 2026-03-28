import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';
class BuildSettingsSection extends StatelessWidget {
  final ThemeData theme;
  const BuildSettingsSection({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.accountSettings,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            color: theme.colorScheme.surfaceContainerHighest.withAlpha(100),
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: theme.colorScheme.onSurface.withAlpha(20),
            ),
          ),
          child: Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                leading: Icon(
                  Icons.palette_rounded,
                  color: theme.colorScheme.primary,
                ),
                title: Text(
                  l10n.theme,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
              Divider(
                height: 1,
                color: theme.colorScheme.onSurface.withAlpha(20),
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                leading: Icon(
                  Icons.language_rounded,
                  color: theme.colorScheme.primary,
                ),
                title: Text(
                  l10n.language,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
              Divider(
                height: 1,
                color: theme.colorScheme.onSurface.withAlpha(20),
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                leading: Icon(
                  Icons.help_outline_rounded,
                  color: theme.colorScheme.primary,
                ),
                title: Text(
                  l10n.helpSupport,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
                trailing: Icon(
                  Icons.chevron_right_rounded,
                  color: theme.colorScheme.onSurface.withAlpha(100),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

