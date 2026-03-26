import  'package:flutter/material.dart';
import 'package:threat_blocker/l10n/app_localizations.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_text_styles.dart';

class NotificationsScreen extends StatelessWidget {
  static const routeName = '/notifications';
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = [
      {
        'title': AppLocalizations.of(context)!.newSafetyTip,
        'desc': AppLocalizations.of(context)!.learnStayProtected,
        'time': AppLocalizations.of(context)!.twoHoursAgo,
        'icon': Icons.lightbulb_outline_rounded,
        'color': AppColors.warning,
      },
      {
        'title':AppLocalizations.of(context)!.systemUpdate ,
        'desc': AppLocalizations.of(context)!.systemUpdateDesc,
        'time':  AppLocalizations.of(context)!.yesterday,
        'icon': Icons.system_update_rounded,
        'color': AppColors.info,
      },
      {
        'title': AppLocalizations.of(context)!.scanWarning,
        'desc': AppLocalizations.of(context)!.scanWarningDesc,
        'time': AppLocalizations.of(context)!.twoHoursAgo,
        'icon': Icons.warning_amber_rounded,
        'color': AppColors.error,
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.notifications),
      ),
      body: SingleChildScrollView(
        child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.all(24),
            separatorBuilder: (context, index) => SizedBox(
                height: 24,
            ),
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final item = notifications[index];
             return Card(
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: (item[''] as Color).withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(item['icon'] as IconData, color: item['color'] as Color),
                ),
                title: Text(item['title'] as String, style: AppTextStyles.h3),
                subtitle: Text(item['desc'] as String, style: AppTextStyles.bodyMedium14),
                trailing: Text(
                  item['time'] as String,
                  style: AppTextStyles.bodySmall12.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
