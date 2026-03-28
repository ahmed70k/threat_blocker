import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';

class BuildLogoutButton extends StatelessWidget {
  final ThemeData theme;
  const BuildLogoutButton({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: theme.colorScheme.error,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: theme.colorScheme.error.withAlpha(50)),
          ),
          backgroundColor: theme.colorScheme.error.withAlpha(20),
        ),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.logout_rounded, size: 24),
            const SizedBox(width: 8),
            Text(
              l10n.logOut,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

