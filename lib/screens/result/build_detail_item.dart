import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:threat_blocker/l10n/app_localizations.dart';
import '../../widgets/quick_action_card.dart';

class BuildDetailItem extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final VoidCallback? onTap;

  const BuildDetailItem({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: theme.colorScheme.outlineVariant.withAlpha(50)),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap ?? () {
          Clipboard.setData(ClipboardData(text: description));
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('${l10n.copiedToClipboard}: $description'),
              duration: const Duration(seconds: 2),
              behavior: SnackBarBehavior.floating,
              width: 280,
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: color.withAlpha(20),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: color, size: 24),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      description,
                      style: TextStyle(
                        color: theme.colorScheme.onSurfaceVariant,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                onTap != null ? Icons.arrow_forward_ios_rounded : Icons.copy_rounded,
                size: 16,
                color: theme.colorScheme.onSurface.withAlpha(100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
